
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int snd_soc_unregister_component (int *) ;
 int tegra20_spdif_runtime_suspend (int *) ;
 int tegra_pcm_platform_unregister (int *) ;

__attribute__((used)) static int tegra20_spdif_platform_remove(struct platform_device *pdev)
{
 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra20_spdif_runtime_suspend(&pdev->dev);

 tegra_pcm_platform_unregister(&pdev->dev);
 snd_soc_unregister_component(&pdev->dev);

 return 0;
}
