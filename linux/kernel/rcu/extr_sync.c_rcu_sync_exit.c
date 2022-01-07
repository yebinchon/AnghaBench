
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_sync {scalar_t__ gp_state; scalar_t__ gp_count; int rss_lock; } ;


 scalar_t__ GP_EXIT ;
 scalar_t__ GP_IDLE ;
 scalar_t__ GP_PASSED ;
 scalar_t__ GP_REPLAY ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int rcu_sync_call (struct rcu_sync*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void rcu_sync_exit(struct rcu_sync *rsp)
{
 WARN_ON_ONCE(READ_ONCE(rsp->gp_state) == GP_IDLE);
 WARN_ON_ONCE(READ_ONCE(rsp->gp_count) == 0);

 spin_lock_irq(&rsp->rss_lock);
 if (!--rsp->gp_count) {
  if (rsp->gp_state == GP_PASSED) {
   WRITE_ONCE(rsp->gp_state, GP_EXIT);
   rcu_sync_call(rsp);
  } else if (rsp->gp_state == GP_EXIT) {
   WRITE_ONCE(rsp->gp_state, GP_REPLAY);
  }
 }
 spin_unlock_irq(&rsp->rss_lock);
}
