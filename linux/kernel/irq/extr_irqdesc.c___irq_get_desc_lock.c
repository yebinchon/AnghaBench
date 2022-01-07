
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; } ;


 unsigned int _IRQ_DESC_CHECK ;
 unsigned int _IRQ_DESC_PERCPU ;
 int chip_bus_lock (struct irq_desc*) ;
 scalar_t__ irq_settings_is_per_cpu_devid (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;

struct irq_desc *
__irq_get_desc_lock(unsigned int irq, unsigned long *flags, bool bus,
      unsigned int check)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (desc) {
  if (check & _IRQ_DESC_CHECK) {
   if ((check & _IRQ_DESC_PERCPU) &&
       !irq_settings_is_per_cpu_devid(desc))
    return ((void*)0);

   if (!(check & _IRQ_DESC_PERCPU) &&
       irq_settings_is_per_cpu_devid(desc))
    return ((void*)0);
  }

  if (bus)
   chip_bus_lock(desc);
  raw_spin_lock_irqsave(&desc->lock, *flags);
 }
 return desc;
}
