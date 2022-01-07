
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_START_FORCE ;
 scalar_t__ WARN_ON (int ) ;
 int irq_activate (struct irq_desc*) ;
 int irq_startup (struct irq_desc*,int,int ) ;

int irq_activate_and_startup(struct irq_desc *desc, bool resend)
{
 if (WARN_ON(irq_activate(desc)))
  return 0;
 return irq_startup(desc, resend, IRQ_START_FORCE);
}
