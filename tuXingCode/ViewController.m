//
//  ViewController.m
//  tuXingCode
//
//  Created by nankang on 2017/11/24.
//  Copyright © 2017年 nankang. All rights reserved.
//

#import "ViewController.h"
#import "YanZhengCodeV.h"

@interface ViewController ()
@property YanZhengCodeV*codeView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    _codeView = [[YanZhengCodeV alloc] initWithFrame:CGRectMake(50, 75, 200, 39)];
    _codeView.changeString=@"9654";//初始验证码
    //手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
    [_codeView addGestureRecognizer:tap];
    [self.view addSubview: _codeView];
    
 
}
- (void)tapClick:(UITapGestureRecognizer*)tap
{
    [_codeView changeCoden:@"1236"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
