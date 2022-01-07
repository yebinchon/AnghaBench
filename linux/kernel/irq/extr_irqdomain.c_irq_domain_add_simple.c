
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_ops {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int CONFIG_SPARSE_IRQ ;
 scalar_t__ IS_ENABLED (int ) ;
 struct irq_domain* __irq_domain_add (int ,unsigned int,unsigned int,int ,struct irq_domain_ops const*,void*) ;
 int irq_alloc_descs (unsigned int,unsigned int,unsigned int,int ) ;
 int irq_domain_associate_many (struct irq_domain*,unsigned int,int ,unsigned int) ;
 int of_node_to_fwnode (struct device_node*) ;
 int of_node_to_nid (struct device_node*) ;
 int pr_info (char*,unsigned int) ;

struct irq_domain *irq_domain_add_simple(struct device_node *of_node,
      unsigned int size,
      unsigned int first_irq,
      const struct irq_domain_ops *ops,
      void *host_data)
{
 struct irq_domain *domain;

 domain = __irq_domain_add(of_node_to_fwnode(of_node), size, size, 0, ops, host_data);
 if (!domain)
  return ((void*)0);

 if (first_irq > 0) {
  if (IS_ENABLED(CONFIG_SPARSE_IRQ)) {

   int rc = irq_alloc_descs(first_irq, first_irq, size,
       of_node_to_nid(of_node));
   if (rc < 0)
    pr_info("Cannot allocate irq_descs @ IRQ%d, assuming pre-allocated\n",
     first_irq);
  }
  irq_domain_associate_many(domain, first_irq, 0, size);
 }

 return domain;
}
