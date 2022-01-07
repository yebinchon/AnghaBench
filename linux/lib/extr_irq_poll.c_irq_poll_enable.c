
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_poll {int state; } ;


 int BUG_ON (int) ;
 int IRQ_POLL_F_SCHED ;
 int clear_bit_unlock (int ,int *) ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;

void irq_poll_enable(struct irq_poll *iop)
{
 BUG_ON(!test_bit(IRQ_POLL_F_SCHED, &iop->state));
 smp_mb__before_atomic();
 clear_bit_unlock(IRQ_POLL_F_SCHED, &iop->state);
}
