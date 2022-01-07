
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int pcm5102a_dai ;
 int soc_component_dev_pcm5102a ;

__attribute__((used)) static int pcm5102a_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev, &soc_component_dev_pcm5102a,
   &pcm5102a_dai, 1);
}
