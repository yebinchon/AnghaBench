
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_sub {scalar_t__ cstream; scalar_t__ substream; int running; } ;
struct uniphier_aio_chip {int num_aios; struct uniphier_aio* aios; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (struct uniphier_aio_sub*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int aiodma_compr_irq (struct uniphier_aio_sub*) ;
 int aiodma_pcm_irq (struct uniphier_aio_sub*) ;
 int aiodma_rb_is_irq (struct uniphier_aio_sub*) ;
 struct uniphier_aio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static irqreturn_t aiodma_irq(int irq, void *p)
{
 struct platform_device *pdev = p;
 struct uniphier_aio_chip *chip = platform_get_drvdata(pdev);
 irqreturn_t ret = IRQ_NONE;
 int i, j;

 for (i = 0; i < chip->num_aios; i++) {
  struct uniphier_aio *aio = &chip->aios[i];

  for (j = 0; j < ARRAY_SIZE(aio->sub); j++) {
   struct uniphier_aio_sub *sub = &aio->sub[j];


   if (!sub->running || !aiodma_rb_is_irq(sub))
    continue;

   if (sub->substream)
    aiodma_pcm_irq(sub);
   if (sub->cstream)
    aiodma_compr_irq(sub);

   ret = IRQ_HANDLED;
  }
 }

 return ret;
}
