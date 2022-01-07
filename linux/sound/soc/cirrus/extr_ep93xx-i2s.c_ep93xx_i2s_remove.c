
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ep93xx_i2s_info {int mclk; int sclk; int lrclk; } ;


 int clk_put (int ) ;
 struct ep93xx_i2s_info* dev_get_drvdata (int *) ;

__attribute__((used)) static int ep93xx_i2s_remove(struct platform_device *pdev)
{
 struct ep93xx_i2s_info *info = dev_get_drvdata(&pdev->dev);

 clk_put(info->lrclk);
 clk_put(info->sclk);
 clk_put(info->mclk);
 return 0;
}
