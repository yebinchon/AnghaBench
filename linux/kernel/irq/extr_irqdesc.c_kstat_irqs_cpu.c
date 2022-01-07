
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {scalar_t__ kstat_irqs; } ;


 struct irq_desc* irq_to_desc (unsigned int) ;
 unsigned int* per_cpu_ptr (scalar_t__,int) ;

unsigned int kstat_irqs_cpu(unsigned int irq, int cpu)
{
 struct irq_desc *desc = irq_to_desc(irq);

 return desc && desc->kstat_irqs ?
   *per_cpu_ptr(desc->kstat_irqs, cpu) : 0;
}
