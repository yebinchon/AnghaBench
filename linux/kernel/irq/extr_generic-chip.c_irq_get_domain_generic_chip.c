
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_chip_generic {int dummy; } ;


 int IS_ERR (struct irq_chip_generic*) ;
 struct irq_chip_generic* __irq_get_domain_generic_chip (struct irq_domain*,unsigned int) ;

struct irq_chip_generic *
irq_get_domain_generic_chip(struct irq_domain *d, unsigned int hw_irq)
{
 struct irq_chip_generic *gc = __irq_get_domain_generic_chip(d, hw_irq);

 return !IS_ERR(gc) ? gc : ((void*)0);
}
