
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dep_map; } ;
struct rcu_synchronize {int head; int completion; } ;


 int RCU_LOCKDEP_WARN (int,char*) ;
 scalar_t__ RCU_SCHEDULER_INACTIVE ;
 int __call_srcu (struct srcu_struct*,int *,int ,int) ;
 int check_init_srcu_struct (struct srcu_struct*) ;
 int destroy_rcu_head_on_stack (int *) ;
 int init_completion (int *) ;
 int init_rcu_head_on_stack (int *) ;
 scalar_t__ lock_is_held (int *) ;
 int might_sleep () ;
 int rcu_bh_lock_map ;
 int rcu_lock_map ;
 int rcu_sched_lock_map ;
 scalar_t__ rcu_scheduler_active ;
 int smp_mb () ;
 int wait_for_completion (int *) ;
 int wakeme_after_rcu ;

__attribute__((used)) static void __synchronize_srcu(struct srcu_struct *ssp, bool do_norm)
{
 struct rcu_synchronize rcu;

 RCU_LOCKDEP_WARN(lock_is_held(&ssp->dep_map) ||
    lock_is_held(&rcu_bh_lock_map) ||
    lock_is_held(&rcu_lock_map) ||
    lock_is_held(&rcu_sched_lock_map),
    "Illegal synchronize_srcu() in same-type SRCU (or in RCU) read-side critical section");

 if (rcu_scheduler_active == RCU_SCHEDULER_INACTIVE)
  return;
 might_sleep();
 check_init_srcu_struct(ssp);
 init_completion(&rcu.completion);
 init_rcu_head_on_stack(&rcu.head);
 __call_srcu(ssp, &rcu.head, wakeme_after_rcu, do_norm);
 wait_for_completion(&rcu.completion);
 destroy_rcu_head_on_stack(&rcu.head);
 smp_mb();
}
