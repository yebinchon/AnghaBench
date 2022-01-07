
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int snd_dmaengine_pcm_unregister (int *) ;

int ux500_pcm_unregister_platform(struct platform_device *pdev)
{
 snd_dmaengine_pcm_unregister(&pdev->dev);
 return 0;
}
