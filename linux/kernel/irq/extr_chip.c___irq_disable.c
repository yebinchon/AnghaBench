
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_4__ {int (* irq_disable ) (TYPE_2__*) ;} ;


 int irq_state_set_disabled (struct irq_desc*) ;
 int irq_state_set_masked (struct irq_desc*) ;
 scalar_t__ irqd_irq_disabled (TYPE_2__*) ;
 int mask_irq (struct irq_desc*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void __irq_disable(struct irq_desc *desc, bool mask)
{
 if (irqd_irq_disabled(&desc->irq_data)) {
  if (mask)
   mask_irq(desc);
 } else {
  irq_state_set_disabled(desc);
  if (desc->irq_data.chip->irq_disable) {
   desc->irq_data.chip->irq_disable(&desc->irq_data);
   irq_state_set_masked(desc);
  } else if (mask) {
   mask_irq(desc);
  }
 }
}
