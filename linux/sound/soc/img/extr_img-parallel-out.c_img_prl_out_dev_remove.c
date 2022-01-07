
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct img_prl_out {int clk_sys; } ;


 int clk_disable_unprepare (int ) ;
 int img_prl_out_suspend (int *) ;
 struct img_prl_out* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;

__attribute__((used)) static int img_prl_out_dev_remove(struct platform_device *pdev)
{
 struct img_prl_out *prl = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  img_prl_out_suspend(&pdev->dev);

 clk_disable_unprepare(prl->clk_sys);

 return 0;
}
