
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct torture_random_state {int dummy; } ;
struct rt_read_seg {int rt_readstate; } ;
struct TYPE_2__ {int (* readlock ) () ;int (* read_delay ) (struct torture_random_state*,struct rt_read_seg*) ;int (* readunlock ) (int) ;} ;


 int RCUTORTURE_RDR_BH ;
 int RCUTORTURE_RDR_IRQ ;
 int RCUTORTURE_RDR_MASK ;
 int RCUTORTURE_RDR_PREEMPT ;
 int RCUTORTURE_RDR_RBH ;
 int RCUTORTURE_RDR_RCU ;
 int RCUTORTURE_RDR_SCHED ;
 int RCUTORTURE_RDR_SHIFT ;
 int WARN_ON_ONCE (int) ;
 TYPE_1__* cur_ops ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_read_lock_bh () ;
 int rcu_read_lock_sched () ;
 int rcu_read_unlock_bh () ;
 int rcu_read_unlock_sched () ;
 int stub1 () ;
 int stub2 (int) ;
 int stub3 (struct torture_random_state*,struct rt_read_seg*) ;

__attribute__((used)) static void rcutorture_one_extend(int *readstate, int newstate,
      struct torture_random_state *trsp,
      struct rt_read_seg *rtrsp)
{
 int idxnew = -1;
 int idxold = *readstate;
 int statesnew = ~*readstate & newstate;
 int statesold = *readstate & ~newstate;

 WARN_ON_ONCE(idxold < 0);
 WARN_ON_ONCE((idxold >> RCUTORTURE_RDR_SHIFT) > 1);
 rtrsp->rt_readstate = newstate;


 if (statesnew & RCUTORTURE_RDR_BH)
  local_bh_disable();
 if (statesnew & RCUTORTURE_RDR_IRQ)
  local_irq_disable();
 if (statesnew & RCUTORTURE_RDR_PREEMPT)
  preempt_disable();
 if (statesnew & RCUTORTURE_RDR_RBH)
  rcu_read_lock_bh();
 if (statesnew & RCUTORTURE_RDR_SCHED)
  rcu_read_lock_sched();
 if (statesnew & RCUTORTURE_RDR_RCU)
  idxnew = cur_ops->readlock() << RCUTORTURE_RDR_SHIFT;


 if (statesold & RCUTORTURE_RDR_IRQ)
  local_irq_enable();
 if (statesold & RCUTORTURE_RDR_BH)
  local_bh_enable();
 if (statesold & RCUTORTURE_RDR_PREEMPT)
  preempt_enable();
 if (statesold & RCUTORTURE_RDR_RBH)
  rcu_read_unlock_bh();
 if (statesold & RCUTORTURE_RDR_SCHED)
  rcu_read_unlock_sched();
 if (statesold & RCUTORTURE_RDR_RCU)
  cur_ops->readunlock(idxold >> RCUTORTURE_RDR_SHIFT);


 if ((statesnew || statesold) && *readstate && newstate)
  cur_ops->read_delay(trsp, rtrsp);


 if (idxnew == -1)
  idxnew = idxold & ~RCUTORTURE_RDR_MASK;
 WARN_ON_ONCE(idxnew < 0);
 WARN_ON_ONCE((idxnew >> RCUTORTURE_RDR_SHIFT) > 1);
 *readstate = idxnew | newstate;
 WARN_ON_ONCE((*readstate >> RCUTORTURE_RDR_SHIFT) < 0);
 WARN_ON_ONCE((*readstate >> RCUTORTURE_RDR_SHIFT) > 1);
}
