
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; int irq_data; } ;


 int IRQD_WAKEUP_ARMED ;
 int IRQS_SUSPENDED ;
 int IRQ_GET_DESC_CHECK_GLOBAL ;
 int __enable_irq (struct irq_desc*) ;
 struct irq_desc* irq_get_desc_buslock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_busunlock (struct irq_desc*,unsigned long) ;
 int irqd_is_wakeup_set (int *) ;
 int irqd_set (int *,int ) ;

void rearm_wake_irq(unsigned int irq)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_buslock(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);

 if (!desc || !(desc->istate & IRQS_SUSPENDED) ||
     !irqd_is_wakeup_set(&desc->irq_data))
  return;

 desc->istate &= ~IRQS_SUSPENDED;
 irqd_set(&desc->irq_data, IRQD_WAKEUP_ARMED);
 __enable_irq(desc);

 irq_put_desc_busunlock(desc, flags);
}
