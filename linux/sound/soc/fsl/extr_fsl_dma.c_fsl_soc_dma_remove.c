
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dma_object {int irq; int channel; } ;


 struct dma_object* dev_get_drvdata (int *) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int kfree (struct dma_object*) ;

__attribute__((used)) static int fsl_soc_dma_remove(struct platform_device *pdev)
{
 struct dma_object *dma = dev_get_drvdata(&pdev->dev);

 iounmap(dma->channel);
 irq_dispose_mapping(dma->irq);
 kfree(dma);

 return 0;
}
