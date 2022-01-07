
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int ptrace; int jobctl; TYPE_1__* sighand; } ;
struct TYPE_2__ {int siglock; } ;


 int JOBCTL_LISTENING ;
 int JOBCTL_TRAP_NOTIFY ;
 int PT_SEIZED ;
 int WARN_ON_ONCE (int) ;
 int assert_spin_locked (int *) ;
 int ptrace_signal_wake_up (struct task_struct*,int) ;
 int task_set_jobctl_pending (struct task_struct*,int ) ;

__attribute__((used)) static void ptrace_trap_notify(struct task_struct *t)
{
 WARN_ON_ONCE(!(t->ptrace & PT_SEIZED));
 assert_spin_locked(&t->sighand->siglock);

 task_set_jobctl_pending(t, JOBCTL_TRAP_NOTIFY);
 ptrace_signal_wake_up(t, t->jobctl & JOBCTL_LISTENING);
}
