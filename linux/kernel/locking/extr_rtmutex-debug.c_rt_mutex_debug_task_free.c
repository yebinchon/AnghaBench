
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_root; } ;
struct task_struct {int pi_blocked_on; TYPE_1__ pi_waiters; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int RB_EMPTY_ROOT (int *) ;

void rt_mutex_debug_task_free(struct task_struct *task)
{
 DEBUG_LOCKS_WARN_ON(!RB_EMPTY_ROOT(&task->pi_waiters.rb_root));
 DEBUG_LOCKS_WARN_ON(task->pi_blocked_on);
}
