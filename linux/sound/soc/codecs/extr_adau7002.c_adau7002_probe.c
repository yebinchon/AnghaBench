
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int adau7002_component_driver ;
 int adau7002_dai ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;

__attribute__((used)) static int adau7002_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
   &adau7002_component_driver,
   &adau7002_dai, 1);
}
