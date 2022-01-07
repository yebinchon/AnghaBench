
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {struct irq_domain* domain; } ;


 struct irq_data* irq_get_irq_data (unsigned int) ;

struct irq_data *irq_domain_get_irq_data(struct irq_domain *domain,
      unsigned int virq)
{
 struct irq_data *irq_data = irq_get_irq_data(virq);

 return (irq_data && irq_data->domain == domain) ? irq_data : ((void*)0);
}
