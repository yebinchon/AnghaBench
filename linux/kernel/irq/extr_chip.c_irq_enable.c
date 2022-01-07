
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_4__ {int (* irq_enable ) (TYPE_2__*) ;} ;


 int irq_state_clr_disabled (struct irq_desc*) ;
 int irq_state_clr_masked (struct irq_desc*) ;
 int irqd_irq_disabled (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int unmask_irq (struct irq_desc*) ;

void irq_enable(struct irq_desc *desc)
{
 if (!irqd_irq_disabled(&desc->irq_data)) {
  unmask_irq(desc);
 } else {
  irq_state_clr_disabled(desc);
  if (desc->irq_data.chip->irq_enable) {
   desc->irq_data.chip->irq_enable(&desc->irq_data);
   irq_state_clr_masked(desc);
  } else {
   unmask_irq(desc);
  }
 }
}
