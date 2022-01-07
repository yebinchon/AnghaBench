
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_pdm_dev {int hclk; int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct rk_pdm_dev* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int rockchip_pdm_runtime_suspend (int *) ;

__attribute__((used)) static int rockchip_pdm_remove(struct platform_device *pdev)
{
 struct rk_pdm_dev *pdm = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  rockchip_pdm_runtime_suspend(&pdev->dev);

 clk_disable_unprepare(pdm->clk);
 clk_disable_unprepare(pdm->hclk);

 return 0;
}
