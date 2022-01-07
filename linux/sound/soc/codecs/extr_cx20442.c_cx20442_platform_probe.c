
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int cx20442_component_dev ;
 int cx20442_dai ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;

__attribute__((used)) static int cx20442_platform_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
   &cx20442_component_dev, &cx20442_dai, 1);
}
