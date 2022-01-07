
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dw_i2s_dev {int capability; int clk; } ;


 int DW_I2S_MASTER ;
 int clk_disable_unprepare (int ) ;
 struct dw_i2s_dev* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int dw_i2s_remove(struct platform_device *pdev)
{
 struct dw_i2s_dev *dev = dev_get_drvdata(&pdev->dev);

 if (dev->capability & DW_I2S_MASTER)
  clk_disable_unprepare(dev->clk);

 pm_runtime_disable(&pdev->dev);
 return 0;
}
