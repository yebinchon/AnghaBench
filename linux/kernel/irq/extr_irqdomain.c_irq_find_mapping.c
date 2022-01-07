
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {scalar_t__ revmap_direct_max_irq; scalar_t__ revmap_size; unsigned int* linear_revmap; int revmap_tree; } ;
struct irq_data {scalar_t__ hwirq; unsigned int irq; } ;
typedef scalar_t__ irq_hw_number_t ;


 struct irq_domain* irq_default_domain ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,scalar_t__) ;
 struct irq_data* radix_tree_lookup (int *,scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

unsigned int irq_find_mapping(struct irq_domain *domain,
         irq_hw_number_t hwirq)
{
 struct irq_data *data;


 if (domain == ((void*)0))
  domain = irq_default_domain;
 if (domain == ((void*)0))
  return 0;

 if (hwirq < domain->revmap_direct_max_irq) {
  data = irq_domain_get_irq_data(domain, hwirq);
  if (data && data->hwirq == hwirq)
   return hwirq;
 }


 if (hwirq < domain->revmap_size)
  return domain->linear_revmap[hwirq];

 rcu_read_lock();
 data = radix_tree_lookup(&domain->revmap_tree, hwirq);
 rcu_read_unlock();
 return data ? data->irq : 0;
}
