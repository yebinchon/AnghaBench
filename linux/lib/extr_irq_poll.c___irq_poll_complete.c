
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_poll {int state; int list; } ;


 int IRQ_POLL_F_SCHED ;
 int clear_bit_unlock (int ,int *) ;
 int list_del (int *) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void __irq_poll_complete(struct irq_poll *iop)
{
 list_del(&iop->list);
 smp_mb__before_atomic();
 clear_bit_unlock(IRQ_POLL_F_SCHED, &iop->state);
}
