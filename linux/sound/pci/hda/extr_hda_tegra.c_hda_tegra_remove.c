
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int hda_tegra_remove(struct platform_device *pdev)
{
 int ret;

 ret = snd_card_free(dev_get_drvdata(&pdev->dev));
 pm_runtime_disable(&pdev->dev);

 return ret;
}
