
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int asoc_idma_platform ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 scalar_t__ idma_irq ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int asoc_idma_platform_probe(struct platform_device *pdev)
{
 idma_irq = platform_get_irq(pdev, 0);
 if (idma_irq < 0)
  return idma_irq;

 return devm_snd_soc_register_component(&pdev->dev, &asoc_idma_platform,
            ((void*)0), 0);
}
