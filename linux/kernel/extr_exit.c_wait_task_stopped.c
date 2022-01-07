
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct waitid_info {int cause; int status; int pid; int uid; } ;
struct wait_opts {int wo_flags; int wo_stat; struct waitid_info* wo_info; scalar_t__ wo_rusage; } ;
struct task_struct {TYPE_1__* sighand; } ;
typedef int pid_t ;
struct TYPE_2__ {int siglock; } ;


 int CLD_STOPPED ;
 int CLD_TRAPPED ;
 int RUSAGE_BOTH ;
 int WNOWAIT ;
 int WUNTRACED ;
 int current_user_ns () ;
 int from_kuid_munged (int ,int ) ;
 int get_task_struct (struct task_struct*) ;
 int getrusage (struct task_struct*,int ,scalar_t__) ;
 scalar_t__ likely (int) ;
 int put_task_struct (struct task_struct*) ;
 int read_unlock (int *) ;
 int sched_annotate_sleep () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_pid_vnr (struct task_struct*) ;
 int* task_stopped_code (struct task_struct*,int) ;
 int task_uid (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int wait_task_stopped(struct wait_opts *wo,
    int ptrace, struct task_struct *p)
{
 struct waitid_info *infop;
 int exit_code, *p_code, why;
 uid_t uid = 0;
 pid_t pid;




 if (!ptrace && !(wo->wo_flags & WUNTRACED))
  return 0;

 if (!task_stopped_code(p, ptrace))
  return 0;

 exit_code = 0;
 spin_lock_irq(&p->sighand->siglock);

 p_code = task_stopped_code(p, ptrace);
 if (unlikely(!p_code))
  goto unlock_sig;

 exit_code = *p_code;
 if (!exit_code)
  goto unlock_sig;

 if (!unlikely(wo->wo_flags & WNOWAIT))
  *p_code = 0;

 uid = from_kuid_munged(current_user_ns(), task_uid(p));
unlock_sig:
 spin_unlock_irq(&p->sighand->siglock);
 if (!exit_code)
  return 0;
 get_task_struct(p);
 pid = task_pid_vnr(p);
 why = ptrace ? CLD_TRAPPED : CLD_STOPPED;
 read_unlock(&tasklist_lock);
 sched_annotate_sleep();
 if (wo->wo_rusage)
  getrusage(p, RUSAGE_BOTH, wo->wo_rusage);
 put_task_struct(p);

 if (likely(!(wo->wo_flags & WNOWAIT)))
  wo->wo_stat = (exit_code << 8) | 0x7f;

 infop = wo->wo_info;
 if (infop) {
  infop->cause = why;
  infop->status = exit_code;
  infop->pid = pid;
  infop->uid = uid;
 }
 return pid;
}
