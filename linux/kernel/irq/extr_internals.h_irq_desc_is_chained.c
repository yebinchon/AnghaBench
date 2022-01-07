
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int * action; } ;


 int chained_action ;

__attribute__((used)) static inline int irq_desc_is_chained(struct irq_desc *desc)
{
 return (desc->action && desc->action == &chained_action);
}
