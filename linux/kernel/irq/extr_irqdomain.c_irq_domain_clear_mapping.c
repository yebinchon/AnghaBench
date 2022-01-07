
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {size_t revmap_size; int revmap_tree_mutex; int revmap_tree; scalar_t__* linear_revmap; } ;
typedef size_t irq_hw_number_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_delete (int *,size_t) ;

__attribute__((used)) static void irq_domain_clear_mapping(struct irq_domain *domain,
         irq_hw_number_t hwirq)
{
 if (hwirq < domain->revmap_size) {
  domain->linear_revmap[hwirq] = 0;
 } else {
  mutex_lock(&domain->revmap_tree_mutex);
  radix_tree_delete(&domain->revmap_tree, hwirq);
  mutex_unlock(&domain->revmap_tree_mutex);
 }
}
