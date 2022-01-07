
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct irq_chip_generic {unsigned int irq_base; int installed; int domain; } ;


 unsigned int __ffs (int ) ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;

__attribute__((used)) static struct irq_data *irq_gc_get_irq_data(struct irq_chip_generic *gc)
{
 unsigned int virq;

 if (!gc->domain)
  return irq_get_irq_data(gc->irq_base);





 if (!gc->installed)
  return ((void*)0);

 virq = irq_find_mapping(gc->domain, gc->irq_base + __ffs(gc->installed));
 return virq ? irq_get_irq_data(virq) : ((void*)0);
}
