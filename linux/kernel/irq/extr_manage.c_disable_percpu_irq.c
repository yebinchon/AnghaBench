
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_GET_DESC_CHECK_PERCPU ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_percpu_disable (struct irq_desc*,unsigned int) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;
 unsigned int smp_processor_id () ;

void disable_percpu_irq(unsigned int irq)
{
 unsigned int cpu = smp_processor_id();
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_lock(irq, &flags, IRQ_GET_DESC_CHECK_PERCPU);

 if (!desc)
  return;

 irq_percpu_disable(desc, cpu);
 irq_put_desc_unlock(desc, flags);
}
