
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_spdif_dev {int hclk; int mclk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct rk_spdif_dev* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int rk_spdif_runtime_suspend (int *) ;

__attribute__((used)) static int rk_spdif_remove(struct platform_device *pdev)
{
 struct rk_spdif_dev *spdif = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  rk_spdif_runtime_suspend(&pdev->dev);

 clk_disable_unprepare(spdif->mclk);
 clk_disable_unprepare(spdif->hclk);

 return 0;
}
