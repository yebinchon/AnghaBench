
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int patch_state; } ;


 int READ_ONCE (int ) ;
 int TIF_PATCH_PENDING ;
 int klp_target_state ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 scalar_t__ test_and_clear_tsk_thread_flag (struct task_struct*,int ) ;

void klp_update_patch_state(struct task_struct *task)
{




 preempt_disable_notrace();
 if (test_and_clear_tsk_thread_flag(task, TIF_PATCH_PENDING))
  task->patch_state = READ_ONCE(klp_target_state);

 preempt_enable_notrace();
}
