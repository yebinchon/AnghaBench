
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int flags; int exit_state; long ptrace; int jobctl; TYPE_2__* signal; TYPE_1__* sighand; } ;
struct TYPE_4__ {int cred_guard_mutex; } ;
struct TYPE_3__ {int siglock; } ;


 int EIO ;
 int EPERM ;
 int ERESTARTNOINTR ;
 int JOBCTL_TRAPPING ;
 int JOBCTL_TRAPPING_BIT ;
 int JOBCTL_TRAP_STOP ;
 int PF_KTHREAD ;
 int PTRACE_ATTACH ;
 int PTRACE_MODE_ATTACH_REALCREDS ;
 scalar_t__ PTRACE_O_MASK ;
 long PTRACE_SEIZE ;
 unsigned long PT_OPT_FLAG_SHIFT ;
 unsigned long PT_PTRACED ;
 unsigned long PT_SEIZED ;
 int SEND_SIG_PRIV ;
 int SIGSTOP ;
 int TASK_KILLABLE ;
 int __TASK_STOPPED ;
 int __ptrace_may_access (struct task_struct*,int ) ;
 int audit_ptrace (struct task_struct*) ;
 int current ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int proc_ptrace_connector (struct task_struct*,int ) ;
 int ptrace_link (struct task_struct*,int ) ;
 scalar_t__ same_thread_group (struct task_struct*,int ) ;
 int send_sig_info (int ,int ,struct task_struct*) ;
 int signal_wake_up_state (struct task_struct*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ task_is_stopped (struct task_struct*) ;
 int task_lock (struct task_struct*) ;
 scalar_t__ task_set_jobctl_pending (struct task_struct*,int) ;
 int task_unlock (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ unlikely (int) ;
 int wait_on_bit (int *,int ,int ) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int ptrace_attach(struct task_struct *task, long request,
    unsigned long addr,
    unsigned long flags)
{
 bool seize = (request == PTRACE_SEIZE);
 int retval;

 retval = -EIO;
 if (seize) {
  if (addr != 0)
   goto out;
  if (flags & ~(unsigned long)PTRACE_O_MASK)
   goto out;
  flags = PT_PTRACED | PT_SEIZED | (flags << PT_OPT_FLAG_SHIFT);
 } else {
  flags = PT_PTRACED;
 }

 audit_ptrace(task);

 retval = -EPERM;
 if (unlikely(task->flags & PF_KTHREAD))
  goto out;
 if (same_thread_group(task, current))
  goto out;






 retval = -ERESTARTNOINTR;
 if (mutex_lock_interruptible(&task->signal->cred_guard_mutex))
  goto out;

 task_lock(task);
 retval = __ptrace_may_access(task, PTRACE_MODE_ATTACH_REALCREDS);
 task_unlock(task);
 if (retval)
  goto unlock_creds;

 write_lock_irq(&tasklist_lock);
 retval = -EPERM;
 if (unlikely(task->exit_state))
  goto unlock_tasklist;
 if (task->ptrace)
  goto unlock_tasklist;

 if (seize)
  flags |= PT_SEIZED;
 task->ptrace = flags;

 ptrace_link(task, current);


 if (!seize)
  send_sig_info(SIGSTOP, SEND_SIG_PRIV, task);

 spin_lock(&task->sighand->siglock);
 if (task_is_stopped(task) &&
     task_set_jobctl_pending(task, JOBCTL_TRAP_STOP | JOBCTL_TRAPPING))
  signal_wake_up_state(task, __TASK_STOPPED);

 spin_unlock(&task->sighand->siglock);

 retval = 0;
unlock_tasklist:
 write_unlock_irq(&tasklist_lock);
unlock_creds:
 mutex_unlock(&task->signal->cred_guard_mutex);
out:
 if (!retval) {







  wait_on_bit(&task->jobctl, JOBCTL_TRAPPING_BIT, TASK_KILLABLE);
  proc_ptrace_connector(task, PTRACE_ATTACH);
 }

 return retval;
}
