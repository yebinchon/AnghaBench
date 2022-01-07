
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_fwd_cb {struct rcu_fwd_cb* rfc_next; } ;


 int kfree (struct rcu_fwd_cb*) ;
 struct rcu_fwd_cb* rcu_fwd_cb_head ;
 struct rcu_fwd_cb** rcu_fwd_cb_tail ;
 int rcu_fwd_lock ;
 int rcu_torture_fwd_prog_cond_resched (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned long rcu_torture_fwd_prog_cbfree(void)
{
 unsigned long flags;
 unsigned long freed = 0;
 struct rcu_fwd_cb *rfcp;

 for (;;) {
  spin_lock_irqsave(&rcu_fwd_lock, flags);
  rfcp = rcu_fwd_cb_head;
  if (!rfcp) {
   spin_unlock_irqrestore(&rcu_fwd_lock, flags);
   break;
  }
  rcu_fwd_cb_head = rfcp->rfc_next;
  if (!rcu_fwd_cb_head)
   rcu_fwd_cb_tail = &rcu_fwd_cb_head;
  spin_unlock_irqrestore(&rcu_fwd_lock, flags);
  kfree(rfcp);
  freed++;
  rcu_torture_fwd_prog_cond_resched(freed);
 }
 return freed;
}
