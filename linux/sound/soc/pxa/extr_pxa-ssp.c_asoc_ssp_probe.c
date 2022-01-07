
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int pxa_ssp_component ;
 int pxa_ssp_dai ;

__attribute__((used)) static int asoc_ssp_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev, &pxa_ssp_component,
            &pxa_ssp_dai, 1);
}
