
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int stm32_adfsdm_remove(struct platform_device *pdev)
{
 snd_soc_unregister_component(&pdev->dev);

 return 0;
}
