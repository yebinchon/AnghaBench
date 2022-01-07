
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int jobctl; struct signal_struct* signal; } ;
struct signal_struct {scalar_t__ group_stop_count; int flags; } ;


 int JOBCTL_STOP_CONSUME ;
 int JOBCTL_STOP_PENDING ;
 int SIGNAL_STOP_STOPPED ;
 int WARN_ON_ONCE (int) ;
 int signal_set_stop_flags (struct signal_struct*,int) ;
 int task_clear_jobctl_pending (struct task_struct*,int) ;

__attribute__((used)) static bool task_participate_group_stop(struct task_struct *task)
{
 struct signal_struct *sig = task->signal;
 bool consume = task->jobctl & JOBCTL_STOP_CONSUME;

 WARN_ON_ONCE(!(task->jobctl & JOBCTL_STOP_PENDING));

 task_clear_jobctl_pending(task, JOBCTL_STOP_PENDING);

 if (!consume)
  return 0;

 if (!WARN_ON_ONCE(sig->group_stop_count == 0))
  sig->group_stop_count--;





 if (!sig->group_stop_count && !(sig->flags & SIGNAL_STOP_STOPPED)) {
  signal_set_stop_flags(sig, SIGNAL_STOP_STOPPED);
  return 1;
 }
 return 0;
}
