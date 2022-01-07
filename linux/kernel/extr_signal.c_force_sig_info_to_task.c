
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_3__* sighand; TYPE_2__* signal; int ptrace; int blocked; } ;
struct kernel_siginfo {int si_signo; } ;
struct TYPE_4__ {scalar_t__ sa_handler; } ;
struct k_sigaction {TYPE_1__ sa; } ;
struct TYPE_6__ {int siglock; struct k_sigaction* action; } ;
struct TYPE_5__ {int flags; } ;


 int PIDTYPE_PID ;
 int SIGNAL_UNKILLABLE ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int recalc_sigpending_and_wake (struct task_struct*) ;
 int send_signal (int,struct kernel_siginfo*,struct task_struct*,int ) ;
 int sigdelset (int *,int) ;
 int sigismember (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
force_sig_info_to_task(struct kernel_siginfo *info, struct task_struct *t)
{
 unsigned long int flags;
 int ret, blocked, ignored;
 struct k_sigaction *action;
 int sig = info->si_signo;

 spin_lock_irqsave(&t->sighand->siglock, flags);
 action = &t->sighand->action[sig-1];
 ignored = action->sa.sa_handler == SIG_IGN;
 blocked = sigismember(&t->blocked, sig);
 if (blocked || ignored) {
  action->sa.sa_handler = SIG_DFL;
  if (blocked) {
   sigdelset(&t->blocked, sig);
   recalc_sigpending_and_wake(t);
  }
 }




 if (action->sa.sa_handler == SIG_DFL && !t->ptrace)
  t->signal->flags &= ~SIGNAL_UNKILLABLE;
 ret = send_signal(sig, info, t, PIDTYPE_PID);
 spin_unlock_irqrestore(&t->sighand->siglock, flags);

 return ret;
}
