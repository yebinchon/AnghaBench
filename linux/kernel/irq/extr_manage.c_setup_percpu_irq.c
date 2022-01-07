
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
struct irq_desc {int irq_data; } ;


 int EINVAL ;
 int __setup_irq (unsigned int,struct irq_desc*,struct irqaction*) ;
 int irq_chip_pm_get (int *) ;
 int irq_chip_pm_put (int *) ;
 int irq_settings_is_per_cpu_devid (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

int setup_percpu_irq(unsigned int irq, struct irqaction *act)
{
 struct irq_desc *desc = irq_to_desc(irq);
 int retval;

 if (!desc || !irq_settings_is_per_cpu_devid(desc))
  return -EINVAL;

 retval = irq_chip_pm_get(&desc->irq_data);
 if (retval < 0)
  return retval;

 retval = __setup_irq(irq, desc, act);

 if (retval)
  irq_chip_pm_put(&desc->irq_data);

 return retval;
}
