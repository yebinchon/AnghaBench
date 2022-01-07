
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int cq93vc_dai ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int soc_component_dev_cq93vc ;

__attribute__((used)) static int cq93vc_platform_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_cq93vc, &cq93vc_dai, 1);
}
