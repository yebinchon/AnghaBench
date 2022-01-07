
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; } ;


 int chip_bus_sync_unlock (struct irq_desc*) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void __irq_put_desc_unlock(struct irq_desc *desc, unsigned long flags, bool bus)
{
 raw_spin_unlock_irqrestore(&desc->lock, flags);
 if (bus)
  chip_bus_sync_unlock(desc);
}
