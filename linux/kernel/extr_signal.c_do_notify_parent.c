
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {scalar_t__ parent_exec_id; int exit_code; TYPE_4__* parent; int ptrace; TYPE_1__* signal; struct task_struct* group_leader; } ;
struct sighand_struct {int siglock; TYPE_3__* action; } ;
struct kernel_siginfo {int si_signo; int si_status; int si_code; void* si_stime; void* si_utime; int si_uid; int si_pid; scalar_t__ si_errno; } ;
struct TYPE_11__ {scalar_t__ self_exec_id; struct sighand_struct* sighand; } ;
struct TYPE_9__ {scalar_t__ sa_handler; int sa_flags; } ;
struct TYPE_10__ {TYPE_2__ sa; } ;
struct TYPE_8__ {scalar_t__ stime; scalar_t__ utime; } ;


 int BUG_ON (int) ;
 int CLD_DUMPED ;
 int CLD_EXITED ;
 int CLD_KILLED ;
 int SA_NOCLDWAIT ;
 int SIGCHLD ;
 scalar_t__ SIG_IGN ;
 int __group_send_sig_info (int,struct kernel_siginfo*,TYPE_4__*) ;
 int __wake_up_parent (struct task_struct*,TYPE_4__*) ;
 int clear_siginfo (struct kernel_siginfo*) ;
 int do_notify_pidfd (struct task_struct*) ;
 int from_kuid_munged (int ,int ) ;
 void* nsec_to_clock_t (scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_active_pid_ns (TYPE_4__*) ;
 int task_cputime (struct task_struct*,scalar_t__*,scalar_t__*) ;
 int task_cred_xxx (TYPE_4__*,int ) ;
 int task_is_stopped_or_traced (struct task_struct*) ;
 int task_pid_nr_ns (struct task_struct*,int ) ;
 int task_uid (struct task_struct*) ;
 int thread_group_empty (struct task_struct*) ;
 int user_ns ;
 scalar_t__ valid_signal (int) ;

bool do_notify_parent(struct task_struct *tsk, int sig)
{
 struct kernel_siginfo info;
 unsigned long flags;
 struct sighand_struct *psig;
 bool autoreap = 0;
 u64 utime, stime;

 BUG_ON(sig == -1);


  BUG_ON(task_is_stopped_or_traced(tsk));

 BUG_ON(!tsk->ptrace &&
        (tsk->group_leader != tsk || !thread_group_empty(tsk)));


 do_notify_pidfd(tsk);

 if (sig != SIGCHLD) {




  if (tsk->parent_exec_id != tsk->parent->self_exec_id)
   sig = SIGCHLD;
 }

 clear_siginfo(&info);
 info.si_signo = sig;
 info.si_errno = 0;
 rcu_read_lock();
 info.si_pid = task_pid_nr_ns(tsk, task_active_pid_ns(tsk->parent));
 info.si_uid = from_kuid_munged(task_cred_xxx(tsk->parent, user_ns),
           task_uid(tsk));
 rcu_read_unlock();

 task_cputime(tsk, &utime, &stime);
 info.si_utime = nsec_to_clock_t(utime + tsk->signal->utime);
 info.si_stime = nsec_to_clock_t(stime + tsk->signal->stime);

 info.si_status = tsk->exit_code & 0x7f;
 if (tsk->exit_code & 0x80)
  info.si_code = CLD_DUMPED;
 else if (tsk->exit_code & 0x7f)
  info.si_code = CLD_KILLED;
 else {
  info.si_code = CLD_EXITED;
  info.si_status = tsk->exit_code >> 8;
 }

 psig = tsk->parent->sighand;
 spin_lock_irqsave(&psig->siglock, flags);
 if (!tsk->ptrace && sig == SIGCHLD &&
     (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN ||
      (psig->action[SIGCHLD-1].sa.sa_flags & SA_NOCLDWAIT))) {
  autoreap = 1;
  if (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN)
   sig = 0;
 }
 if (valid_signal(sig) && sig)
  __group_send_sig_info(sig, &info, tsk->parent);
 __wake_up_parent(tsk, tsk->parent);
 spin_unlock_irqrestore(&psig->siglock, flags);

 return autoreap;
}
