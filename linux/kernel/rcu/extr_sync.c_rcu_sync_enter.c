
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_sync {int gp_state; int gp_wait; int cb_head; int rss_lock; int gp_count; } ;


 int GP_ENTER ;
 int GP_IDLE ;
 scalar_t__ GP_PASSED ;
 scalar_t__ READ_ONCE (int) ;
 int WARN_ON_ONCE (int ) ;
 int WRITE_ONCE (int,int ) ;
 int rcu_sync_func (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_rcu () ;
 int wait_event (int ,int) ;

void rcu_sync_enter(struct rcu_sync *rsp)
{
 int gp_state;

 spin_lock_irq(&rsp->rss_lock);
 gp_state = rsp->gp_state;
 if (gp_state == GP_IDLE) {
  WRITE_ONCE(rsp->gp_state, GP_ENTER);
  WARN_ON_ONCE(rsp->gp_count);
 }
 rsp->gp_count++;
 spin_unlock_irq(&rsp->rss_lock);

 if (gp_state == GP_IDLE) {




  synchronize_rcu();
  rcu_sync_func(&rsp->cb_head);

  return;
 }

 wait_event(rsp->gp_wait, READ_ONCE(rsp->gp_state) >= GP_PASSED);
}
