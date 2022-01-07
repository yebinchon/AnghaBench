
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpass_variant {int dummy; } ;
struct lpass_data {scalar_t__* substream; int lpaif_map; struct lpass_variant* variant; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LPAIF_IRQSTAT_REG (struct lpass_variant*,int ) ;
 unsigned int LPAIF_IRQ_ALL (int) ;
 int LPAIF_IRQ_PORT_HOST ;
 int LPASS_MAX_DMA_CHANNELS ;
 int lpass_dma_interrupt_handler (scalar_t__,struct lpass_data*,int,unsigned int) ;
 int pr_err (char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t lpass_platform_lpaif_irq(int irq, void *data)
{
 struct lpass_data *drvdata = data;
 struct lpass_variant *v = drvdata->variant;
 unsigned int irqs;
 int rv, chan;

 rv = regmap_read(drvdata->lpaif_map,
   LPAIF_IRQSTAT_REG(v, LPAIF_IRQ_PORT_HOST), &irqs);
 if (rv) {
  pr_err("error reading from irqstat reg: %d\n", rv);
  return IRQ_NONE;
 }


 for (chan = 0; chan < LPASS_MAX_DMA_CHANNELS; chan++) {
  if (irqs & LPAIF_IRQ_ALL(chan) && drvdata->substream[chan]) {
   rv = lpass_dma_interrupt_handler(
      drvdata->substream[chan],
      drvdata, chan, irqs);
   if (rv != IRQ_HANDLED)
    return rv;
  }
 }

 return IRQ_HANDLED;
}
