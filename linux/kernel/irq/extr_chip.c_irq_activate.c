
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;


 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irq_domain_activate_irq (struct irq_data*,int) ;
 int irqd_affinity_is_managed (struct irq_data*) ;

int irq_activate(struct irq_desc *desc)
{
 struct irq_data *d = irq_desc_get_irq_data(desc);

 if (!irqd_affinity_is_managed(d))
  return irq_domain_activate_irq(d, 0);
 return 0;
}
