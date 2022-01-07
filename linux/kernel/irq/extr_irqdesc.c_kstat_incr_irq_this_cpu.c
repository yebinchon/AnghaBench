
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_to_desc (unsigned int) ;
 int kstat_incr_irqs_this_cpu (int ) ;

void kstat_incr_irq_this_cpu(unsigned int irq)
{
 kstat_incr_irqs_this_cpu(irq_to_desc(irq));
}
