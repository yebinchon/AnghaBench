
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned int TASK_INTERRUPTIBLE ;
 int TIF_SIGPENDING ;
 int kick_process (struct task_struct*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int wake_up_state (struct task_struct*,unsigned int) ;

void signal_wake_up_state(struct task_struct *t, unsigned int state)
{
 set_tsk_thread_flag(t, TIF_SIGPENDING);







 if (!wake_up_state(t, state | TASK_INTERRUPTIBLE))
  kick_process(t);
}
