
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int __irq_disable (struct irq_desc*,int ) ;
 int irq_settings_disable_unlazy (struct irq_desc*) ;

void irq_disable(struct irq_desc *desc)
{
 __irq_disable(desc, irq_settings_disable_unlazy(desc));
}
