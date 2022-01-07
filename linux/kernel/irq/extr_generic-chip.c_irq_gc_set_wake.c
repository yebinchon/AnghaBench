
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int mask; } ;
struct irq_chip_generic {int wake_enabled; int wake_active; } ;


 int EINVAL ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;

int irq_gc_set_wake(struct irq_data *d, unsigned int on)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 u32 mask = d->mask;

 if (!(mask & gc->wake_enabled))
  return -EINVAL;

 irq_gc_lock(gc);
 if (on)
  gc->wake_active |= mask;
 else
  gc->wake_active &= ~mask;
 irq_gc_unlock(gc);
 return 0;
}
