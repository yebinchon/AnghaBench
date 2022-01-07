
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {int flags; } ;


 int IRQ_WORK_BUSY ;
 int cpu_relax () ;
 int lockdep_assert_irqs_enabled () ;

void irq_work_sync(struct irq_work *work)
{
 lockdep_assert_irqs_enabled();

 while (work->flags & IRQ_WORK_BUSY)
  cpu_relax();
}
