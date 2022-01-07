
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_poll {int list; int state; } ;


 int IRQ_POLL_F_DISABLE ;
 int IRQ_POLL_F_SCHED ;
 int IRQ_POLL_SOFTIRQ ;
 int blk_cpu_iopoll ;
 int list_add_tail (int *,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int raise_softirq_irqoff (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int this_cpu_ptr (int *) ;

void irq_poll_sched(struct irq_poll *iop)
{
 unsigned long flags;

 if (test_bit(IRQ_POLL_F_DISABLE, &iop->state))
  return;
 if (test_and_set_bit(IRQ_POLL_F_SCHED, &iop->state))
  return;

 local_irq_save(flags);
 list_add_tail(&iop->list, this_cpu_ptr(&blk_cpu_iopoll));
 raise_softirq_irqoff(IRQ_POLL_SOFTIRQ);
 local_irq_restore(flags);
}
