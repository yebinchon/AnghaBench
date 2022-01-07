
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* irq_unmask ) (struct irq_data*) ;int (* irq_mask ) (struct irq_data*) ;} ;


 int irq_data_to_desc (struct irq_data*) ;
 struct irq_data* irq_desc_get_irq_data (int ) ;
 int irq_move_masked_irq (struct irq_data*) ;
 int irqd_irq_disabled (struct irq_data*) ;
 int irqd_irq_masked (struct irq_data*) ;
 int stub1 (struct irq_data*) ;
 int stub2 (struct irq_data*) ;
 scalar_t__ unlikely (int ) ;

void __irq_move_irq(struct irq_data *idata)
{
 bool masked;






 idata = irq_desc_get_irq_data(irq_data_to_desc(idata));

 if (unlikely(irqd_irq_disabled(idata)))
  return;






 masked = irqd_irq_masked(idata);
 if (!masked)
  idata->chip->irq_mask(idata);
 irq_move_masked_irq(idata);
 if (!masked)
  idata->chip->irq_unmask(idata);
}
