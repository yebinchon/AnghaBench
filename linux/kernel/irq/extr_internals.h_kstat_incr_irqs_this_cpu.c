
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int tot_count; } ;


 int __kstat_incr_irqs_this_cpu (struct irq_desc*) ;

__attribute__((used)) static inline void kstat_incr_irqs_this_cpu(struct irq_desc *desc)
{
 __kstat_incr_irqs_this_cpu(desc);
 desc->tot_count++;
}
