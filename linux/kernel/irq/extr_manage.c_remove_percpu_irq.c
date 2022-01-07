
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int percpu_dev_id; } ;
struct irq_desc {int dummy; } ;


 int __free_percpu_irq (unsigned int,int ) ;
 scalar_t__ irq_settings_is_per_cpu_devid (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

void remove_percpu_irq(unsigned int irq, struct irqaction *act)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (desc && irq_settings_is_per_cpu_devid(desc))
     __free_percpu_irq(irq, act->percpu_dev_id);
}
