
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int img_spdif_out_runtime_suspend (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;

__attribute__((used)) static int img_spdif_out_dev_remove(struct platform_device *pdev)
{
 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  img_spdif_out_runtime_suspend(&pdev->dev);

 return 0;
}
