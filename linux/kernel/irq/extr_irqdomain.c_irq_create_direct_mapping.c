
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {unsigned int revmap_direct_max_irq; } ;
struct device_node {int dummy; } ;


 unsigned int irq_alloc_desc_from (int,int ) ;
 struct irq_domain* irq_default_domain ;
 scalar_t__ irq_domain_associate (struct irq_domain*,unsigned int,unsigned int) ;
 struct device_node* irq_domain_get_of_node (struct irq_domain*) ;
 int irq_free_desc (unsigned int) ;
 int of_node_to_nid (struct device_node*) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,unsigned int) ;

unsigned int irq_create_direct_mapping(struct irq_domain *domain)
{
 struct device_node *of_node;
 unsigned int virq;

 if (domain == ((void*)0))
  domain = irq_default_domain;

 of_node = irq_domain_get_of_node(domain);
 virq = irq_alloc_desc_from(1, of_node_to_nid(of_node));
 if (!virq) {
  pr_debug("create_direct virq allocation failed\n");
  return 0;
 }
 if (virq >= domain->revmap_direct_max_irq) {
  pr_err("ERROR: no free irqs available below %i maximum\n",
   domain->revmap_direct_max_irq);
  irq_free_desc(virq);
  return 0;
 }
 pr_debug("create_direct obtained virq %d\n", virq);

 if (irq_domain_associate(domain, virq, virq)) {
  irq_free_desc(virq);
  return 0;
 }

 return virq;
}
