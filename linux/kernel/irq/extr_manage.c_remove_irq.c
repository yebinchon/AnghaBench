
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dev_id; } ;
struct irq_desc {int dummy; } ;


 int WARN_ON (int ) ;
 int __free_irq (struct irq_desc*,int ) ;
 int irq_settings_is_per_cpu_devid (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

void remove_irq(unsigned int irq, struct irqaction *act)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (desc && !WARN_ON(irq_settings_is_per_cpu_devid(desc)))
  __free_irq(desc, act->dev_id);
}
