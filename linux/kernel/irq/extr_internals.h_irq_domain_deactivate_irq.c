
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irqd_clr_activated (struct irq_data*) ;

__attribute__((used)) static inline void irq_domain_deactivate_irq(struct irq_data *data)
{
 irqd_clr_activated(data);
}
