
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_amd7930 {scalar_t__ regs; scalar_t__ irq; struct platform_device* op; } ;
struct platform_device {int * resource; } ;


 int amd7930_idle (struct snd_amd7930*) ;
 int free_irq (scalar_t__,struct snd_amd7930*) ;
 int kfree (struct snd_amd7930*) ;
 int of_iounmap (int *,scalar_t__,int ) ;
 int resource_size (int *) ;

__attribute__((used)) static int snd_amd7930_free(struct snd_amd7930 *amd)
{
 struct platform_device *op = amd->op;

 amd7930_idle(amd);

 if (amd->irq)
  free_irq(amd->irq, amd);

 if (amd->regs)
  of_iounmap(&op->resource[0], amd->regs,
      resource_size(&op->resource[0]));

 kfree(amd);

 return 0;
}
