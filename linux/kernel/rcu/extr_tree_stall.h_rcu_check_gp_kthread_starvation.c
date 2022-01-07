
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int state; } ;
struct TYPE_2__ {int gp_state; int gp_flags; int gp_seq; int name; int gp_activity; struct task_struct* gp_kthread; } ;


 int HZ ;
 unsigned long READ_ONCE (int ) ;
 int gp_state_getname (int ) ;
 unsigned long jiffies ;
 int pr_err (char*,...) ;
 scalar_t__ rcu_seq_current (int *) ;
 TYPE_1__ rcu_state ;
 int sched_show_task (struct task_struct*) ;
 int task_cpu (struct task_struct*) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void rcu_check_gp_kthread_starvation(void)
{
 struct task_struct *gpk = rcu_state.gp_kthread;
 unsigned long j;

 j = jiffies - READ_ONCE(rcu_state.gp_activity);
 if (j > 2 * HZ) {
  pr_err("%s kthread starved for %ld jiffies! g%ld f%#x %s(%d) ->state=%#lx ->cpu=%d\n",
         rcu_state.name, j,
         (long)rcu_seq_current(&rcu_state.gp_seq),
         READ_ONCE(rcu_state.gp_flags),
         gp_state_getname(rcu_state.gp_state), rcu_state.gp_state,
         gpk ? gpk->state : ~0, gpk ? task_cpu(gpk) : -1);
  if (gpk) {
   pr_err("RCU grace-period kthread stack dump:\n");
   sched_show_task(gpk);
   wake_up_process(gpk);
  }
 }
}
