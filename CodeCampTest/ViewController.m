//
//  ViewController.m
//  CodeCampTest
//
//  Created by Vương Xuân Tuyến on 7/14/16.
//  Copyright © 2016 Vương Xuân Tuyến. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screenRect=[[UIScreen mainScreen] bounds];
    CGFloat screenWidth=screenRect.size.width;
    CGFloat screenHeight=screenRect.size.height;
    const CGFloat vien=20;
    const CGFloat khe=10;
    const CGFloat btnWidgh=(screenWidth-2*vien-8*khe)/9;
    const CGFloat btnHeight=(screenHeight-2*vien-9*khe -vien)/11;
    for (int i=0; i<6; i++) {
        for (int j = 0; j<6; j++) {
            UIButton *btn= [[UIButton alloc]initWithFrame:CGRectMake(vien+j*(khe+btnWidgh), vien+i*(khe+btnHeight), btnWidgh, btnHeight)];
            [btn setBackgroundColor:[UIColor blueColor]];
            [self.view addSubview:btn];
        }
    }
    UIButton *btn= [[UIButton alloc]initWithFrame:CGRectMake(vien+4*(khe+btnWidgh), vien+10*(khe+btnHeight), btnWidgh, btnHeight)];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:btn];
}
@end
