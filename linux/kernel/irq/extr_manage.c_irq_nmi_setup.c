
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {struct irq_chip* chip; } ;
struct irq_chip {int (* irq_nmi_setup ) (struct irq_data*) ;} ;


 int EINVAL ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static int irq_nmi_setup(struct irq_desc *desc)
{
 struct irq_data *d = irq_desc_get_irq_data(desc);
 struct irq_chip *c = d->chip;

 return c->irq_nmi_setup ? c->irq_nmi_setup(d) : -EINVAL;
}
