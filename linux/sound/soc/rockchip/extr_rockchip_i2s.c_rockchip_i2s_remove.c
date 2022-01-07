
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_i2s_dev {int hclk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct rk_i2s_dev* dev_get_drvdata (int *) ;
 int i2s_runtime_suspend (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;

__attribute__((used)) static int rockchip_i2s_remove(struct platform_device *pdev)
{
 struct rk_i2s_dev *i2s = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  i2s_runtime_suspend(&pdev->dev);

 clk_disable_unprepare(i2s->hclk);

 return 0;
}
