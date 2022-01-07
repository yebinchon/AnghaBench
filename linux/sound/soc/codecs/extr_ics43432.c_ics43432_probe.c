
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int ics43432_component_driver ;
 int ics43432_dai ;

__attribute__((used)) static int ics43432_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
   &ics43432_component_driver,
   &ics43432_dai, 1);
}
