
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int soc_component_dev_wl1273 ;
 int wl1273_dai ;

__attribute__((used)) static int wl1273_platform_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
          &soc_component_dev_wl1273,
          &wl1273_dai, 1);
}
