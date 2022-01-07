
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int flags; int jobctl; TYPE_2__* sighand; TYPE_1__* signal; scalar_t__ ptrace; struct cred* ptracer_cred; int ptrace_entry; int real_parent; int parent; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {int flags; scalar_t__ group_stop_count; } ;


 int BUG_ON (int) ;
 int JOBCTL_STOP_PENDING ;
 int JOBCTL_STOP_SIGMASK ;
 int JOBCTL_TRAP_MASK ;
 int PF_EXITING ;
 int SIGNAL_STOP_STOPPED ;
 int SIGSTOP ;
 int TIF_SYSCALL_EMU ;
 int TIF_SYSCALL_TRACE ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int list_del_init (int *) ;
 int ptrace_signal_wake_up (struct task_struct*,int) ;
 int put_cred (struct cred const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_clear_jobctl_pending (struct task_struct*,int ) ;
 int task_clear_jobctl_trapping (struct task_struct*) ;
 scalar_t__ task_is_traced (struct task_struct*) ;

void __ptrace_unlink(struct task_struct *child)
{
 const struct cred *old_cred;
 BUG_ON(!child->ptrace);

 clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);




 child->parent = child->real_parent;
 list_del_init(&child->ptrace_entry);
 old_cred = child->ptracer_cred;
 child->ptracer_cred = ((void*)0);
 put_cred(old_cred);

 spin_lock(&child->sighand->siglock);
 child->ptrace = 0;




 task_clear_jobctl_pending(child, JOBCTL_TRAP_MASK);
 task_clear_jobctl_trapping(child);





 if (!(child->flags & PF_EXITING) &&
     (child->signal->flags & SIGNAL_STOP_STOPPED ||
      child->signal->group_stop_count)) {
  child->jobctl |= JOBCTL_STOP_PENDING;
  if (!(child->jobctl & JOBCTL_STOP_SIGMASK))
   child->jobctl |= SIGSTOP;
 }







 if (child->jobctl & JOBCTL_STOP_PENDING || task_is_traced(child))
  ptrace_signal_wake_up(child, 1);

 spin_unlock(&child->sighand->siglock);
}
