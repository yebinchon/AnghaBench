
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_common_data; } ;


 int irq_common_data_get_node (int *) ;

__attribute__((used)) static inline int irq_desc_get_node(struct irq_desc *desc)
{
 return irq_common_data_get_node(&desc->irq_common_data);
}
