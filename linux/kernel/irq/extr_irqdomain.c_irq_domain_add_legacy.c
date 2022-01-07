
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_ops {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;


 struct irq_domain* __irq_domain_add (int ,int ,int ,int ,struct irq_domain_ops const*,void*) ;
 int irq_domain_associate_many (struct irq_domain*,unsigned int,int ,unsigned int) ;
 int of_node_to_fwnode (struct device_node*) ;

struct irq_domain *irq_domain_add_legacy(struct device_node *of_node,
      unsigned int size,
      unsigned int first_irq,
      irq_hw_number_t first_hwirq,
      const struct irq_domain_ops *ops,
      void *host_data)
{
 struct irq_domain *domain;

 domain = __irq_domain_add(of_node_to_fwnode(of_node), first_hwirq + size,
      first_hwirq + size, 0, ops, host_data);
 if (domain)
  irq_domain_associate_many(domain, first_irq, first_hwirq, size);

 return domain;
}
