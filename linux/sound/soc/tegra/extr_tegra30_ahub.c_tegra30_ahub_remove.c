
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ENODEV ;
 int ahub ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int tegra30_ahub_runtime_suspend (int *) ;

__attribute__((used)) static int tegra30_ahub_remove(struct platform_device *pdev)
{
 if (!ahub)
  return -ENODEV;

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra30_ahub_runtime_suspend(&pdev->dev);

 return 0;
}
