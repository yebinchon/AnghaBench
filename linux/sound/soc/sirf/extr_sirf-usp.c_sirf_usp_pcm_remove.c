
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int pm_runtime_disable (int *) ;
 int pm_runtime_enabled (int *) ;
 int sirf_usp_pcm_runtime_suspend (int *) ;

__attribute__((used)) static int sirf_usp_pcm_remove(struct platform_device *pdev)
{
 if (!pm_runtime_enabled(&pdev->dev))
  sirf_usp_pcm_runtime_suspend(&pdev->dev);
 else
  pm_runtime_disable(&pdev->dev);
 return 0;
}
