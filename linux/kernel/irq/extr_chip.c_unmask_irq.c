
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_4__ {int (* irq_unmask ) (TYPE_2__*) ;} ;


 int irq_state_clr_masked (struct irq_desc*) ;
 int irqd_irq_masked (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void unmask_irq(struct irq_desc *desc)
{
 if (!irqd_irq_masked(&desc->irq_data))
  return;

 if (desc->irq_data.chip->irq_unmask) {
  desc->irq_data.chip->irq_unmask(&desc->irq_data);
  irq_state_clr_masked(desc);
 }
}
