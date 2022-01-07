
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ads117x_dai ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int soc_component_dev_ads117x ;

__attribute__((used)) static int ads117x_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_ads117x, &ads117x_dai, 1);
}
