
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {int depth; TYPE_2__ irq_data; } ;
struct TYPE_4__ {int (* irq_shutdown ) (TYPE_2__*) ;} ;


 int __irq_disable (struct irq_desc*,int) ;
 int irq_state_clr_started (struct irq_desc*) ;
 int irq_state_set_disabled (struct irq_desc*) ;
 int irq_state_set_masked (struct irq_desc*) ;
 scalar_t__ irqd_is_started (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void irq_shutdown(struct irq_desc *desc)
{
 if (irqd_is_started(&desc->irq_data)) {
  desc->depth = 1;
  if (desc->irq_data.chip->irq_shutdown) {
   desc->irq_data.chip->irq_shutdown(&desc->irq_data);
   irq_state_set_disabled(desc);
   irq_state_set_masked(desc);
  } else {
   __irq_disable(desc, 1);
  }
  irq_state_clr_started(desc);
 }
}
