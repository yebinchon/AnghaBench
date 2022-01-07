
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {size_t revmap_size; int revmap_tree_mutex; int revmap_tree; int * linear_revmap; } ;
struct irq_data {int irq; } ;
typedef size_t irq_hw_number_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_insert (int *,size_t,struct irq_data*) ;

__attribute__((used)) static void irq_domain_set_mapping(struct irq_domain *domain,
       irq_hw_number_t hwirq,
       struct irq_data *irq_data)
{
 if (hwirq < domain->revmap_size) {
  domain->linear_revmap[hwirq] = irq_data->irq;
 } else {
  mutex_lock(&domain->revmap_tree_mutex);
  radix_tree_insert(&domain->revmap_tree, hwirq, irq_data);
  mutex_unlock(&domain->revmap_tree_mutex);
 }
}
