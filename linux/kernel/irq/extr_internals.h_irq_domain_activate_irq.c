
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irqd_set_activated (struct irq_data*) ;

__attribute__((used)) static inline int irq_domain_activate_irq(struct irq_data *data, bool reserve)
{
 irqd_set_activated(data);
 return 0;
}
