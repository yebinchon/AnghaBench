
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int flags; struct irq_domain* name; int link; int revmap_tree; } ;


 int IRQ_DOMAIN_NAME_ALLOCATED ;
 int WARN_ON (int) ;
 int debugfs_remove_domain_dir (struct irq_domain*) ;
 struct irq_domain* irq_default_domain ;
 int irq_domain_get_of_node (struct irq_domain*) ;
 int irq_domain_mutex ;
 int irq_set_default_host (int *) ;
 int kfree (struct irq_domain*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_node_put (int ) ;
 int pr_debug (char*,struct irq_domain*) ;
 int radix_tree_empty (int *) ;
 scalar_t__ unlikely (int) ;

void irq_domain_remove(struct irq_domain *domain)
{
 mutex_lock(&irq_domain_mutex);
 debugfs_remove_domain_dir(domain);

 WARN_ON(!radix_tree_empty(&domain->revmap_tree));

 list_del(&domain->link);




 if (unlikely(irq_default_domain == domain))
  irq_set_default_host(((void*)0));

 mutex_unlock(&irq_domain_mutex);

 pr_debug("Removed domain %s\n", domain->name);

 of_node_put(irq_domain_get_of_node(domain));
 if (domain->flags & IRQ_DOMAIN_NAME_ALLOCATED)
  kfree(domain->name);
 kfree(domain);
}
