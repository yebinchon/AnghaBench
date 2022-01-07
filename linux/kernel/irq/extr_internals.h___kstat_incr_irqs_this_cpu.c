
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int * kstat_irqs; } ;
struct TYPE_2__ {int irqs_sum; } ;


 int __this_cpu_inc (int ) ;
 TYPE_1__ kstat ;

__attribute__((used)) static inline void __kstat_incr_irqs_this_cpu(struct irq_desc *desc)
{
 __this_cpu_inc(*desc->kstat_irqs);
 __this_cpu_inc(kstat.irqs_sum);
}
