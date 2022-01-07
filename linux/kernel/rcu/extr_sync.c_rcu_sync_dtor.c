
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_sync {int gp_count; int gp_state; int rss_lock; } ;


 int GP_EXIT ;
 int GP_IDLE ;
 scalar_t__ GP_PASSED ;
 int GP_REPLAY ;
 scalar_t__ READ_ONCE (int) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int,int ) ;
 int rcu_barrier () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void rcu_sync_dtor(struct rcu_sync *rsp)
{
 int gp_state;

 WARN_ON_ONCE(READ_ONCE(rsp->gp_count));
 WARN_ON_ONCE(READ_ONCE(rsp->gp_state) == GP_PASSED);

 spin_lock_irq(&rsp->rss_lock);
 if (rsp->gp_state == GP_REPLAY)
  WRITE_ONCE(rsp->gp_state, GP_EXIT);
 gp_state = rsp->gp_state;
 spin_unlock_irq(&rsp->rss_lock);

 if (gp_state != GP_IDLE) {
  rcu_barrier();
  WARN_ON_ONCE(rsp->gp_state != GP_IDLE);
 }
}
