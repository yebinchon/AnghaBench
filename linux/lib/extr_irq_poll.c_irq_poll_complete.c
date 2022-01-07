
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_poll {int dummy; } ;


 int __irq_poll_complete (struct irq_poll*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void irq_poll_complete(struct irq_poll *iop)
{
 unsigned long flags;

 local_irq_save(flags);
 __irq_poll_complete(iop);
 local_irq_restore(flags);
}
