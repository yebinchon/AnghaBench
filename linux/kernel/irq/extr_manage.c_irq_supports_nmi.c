
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct irq_data {TYPE_1__* chip; scalar_t__ parent_data; } ;
struct TYPE_2__ {int flags; scalar_t__ irq_bus_sync_unlock; scalar_t__ irq_bus_lock; } ;


 int IRQCHIP_SUPPORTS_NMI ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;

__attribute__((used)) static bool irq_supports_nmi(struct irq_desc *desc)
{
 struct irq_data *d = irq_desc_get_irq_data(desc);







 if (d->chip->irq_bus_lock || d->chip->irq_bus_sync_unlock)
  return 0;

 return d->chip->flags & IRQCHIP_SUPPORTS_NMI;
}
