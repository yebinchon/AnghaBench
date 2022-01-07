
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int RCU_KTHREAD_YIELDING ;
 int current ;
 scalar_t__ is_idle_task (int ) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void rcu_wake_cond(struct task_struct *t, int status)
{




 if (t && (status != RCU_KTHREAD_YIELDING || is_idle_task(current)))
  wake_up_process(t);
}
