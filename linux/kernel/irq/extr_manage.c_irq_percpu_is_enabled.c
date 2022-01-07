
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int percpu_enabled; } ;


 int IRQ_GET_DESC_CHECK_PERCPU ;
 int cpumask_test_cpu (unsigned int,int ) ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;
 unsigned int smp_processor_id () ;

bool irq_percpu_is_enabled(unsigned int irq)
{
 unsigned int cpu = smp_processor_id();
 struct irq_desc *desc;
 unsigned long flags;
 bool is_enabled;

 desc = irq_get_desc_lock(irq, &flags, IRQ_GET_DESC_CHECK_PERCPU);
 if (!desc)
  return 0;

 is_enabled = cpumask_test_cpu(cpu, desc->percpu_enabled);
 irq_put_desc_unlock(desc, flags);

 return is_enabled;
}
