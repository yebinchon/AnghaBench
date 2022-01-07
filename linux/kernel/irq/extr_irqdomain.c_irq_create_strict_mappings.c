
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;


 int irq_alloc_descs (unsigned int,unsigned int,int,int ) ;
 int irq_domain_associate_many (struct irq_domain*,unsigned int,int ,int) ;
 struct device_node* irq_domain_get_of_node (struct irq_domain*) ;
 int of_node_to_nid (struct device_node*) ;
 scalar_t__ unlikely (int) ;

int irq_create_strict_mappings(struct irq_domain *domain, unsigned int irq_base,
          irq_hw_number_t hwirq_base, int count)
{
 struct device_node *of_node;
 int ret;

 of_node = irq_domain_get_of_node(domain);
 ret = irq_alloc_descs(irq_base, irq_base, count,
         of_node_to_nid(of_node));
 if (unlikely(ret < 0))
  return ret;

 irq_domain_associate_many(domain, irq_base, hwirq_base, count);
 return 0;
}
