
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef scalar_t__ u64 ;
struct waitid_info {int status; int pid; int uid; int cause; } ;
struct wait_opts {int wo_flags; int wo_stat; struct waitid_info* wo_info; scalar_t__ wo_rusage; } ;
struct task_struct {int exit_code; int exit_state; int exit_signal; struct signal_struct* signal; int ioac; scalar_t__ nivcsw; scalar_t__ nvcsw; scalar_t__ maj_flt; scalar_t__ min_flt; } ;
struct signal_struct {unsigned long cmaxrss; int flags; int group_exit_code; int stats_lock; int ioac; int maxrss; scalar_t__ coublock; scalar_t__ oublock; scalar_t__ cinblock; scalar_t__ inblock; scalar_t__ cnivcsw; scalar_t__ nivcsw; scalar_t__ cnvcsw; scalar_t__ nvcsw; scalar_t__ cmaj_flt; scalar_t__ maj_flt; scalar_t__ cmin_flt; scalar_t__ min_flt; scalar_t__ cgtime; scalar_t__ gtime; scalar_t__ cstime; scalar_t__ cutime; } ;
typedef int pid_t ;
struct TYPE_4__ {TYPE_1__* sighand; struct signal_struct* signal; } ;
struct TYPE_3__ {int siglock; } ;


 int CLD_DUMPED ;
 int CLD_EXITED ;
 int CLD_KILLED ;
 int EXIT_DEAD ;
 int EXIT_TRACE ;
 int EXIT_ZOMBIE ;
 int RUSAGE_BOTH ;
 int SIGNAL_GROUP_EXIT ;
 int WEXITED ;
 int WNOWAIT ;
 int cmpxchg (int*,int,int) ;
 TYPE_2__* current ;
 int current_user_ns () ;
 scalar_t__ do_notify_parent (struct task_struct*,int ) ;
 int from_kuid_munged (int ,int ) ;
 int get_task_struct (struct task_struct*) ;
 int getrusage (struct task_struct*,int ,scalar_t__) ;
 int likely (int) ;
 unsigned long max (int ,unsigned long) ;
 scalar_t__ ptrace_reparented (struct task_struct*) ;
 int ptrace_unlink (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int read_unlock (int *) ;
 int release_task (struct task_struct*) ;
 int sched_annotate_sleep () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ task_gtime (struct task_struct*) ;
 int task_io_accounting_add (int *,int *) ;
 scalar_t__ task_io_get_inblock (struct task_struct*) ;
 scalar_t__ task_io_get_oublock (struct task_struct*) ;
 int task_pid_vnr (struct task_struct*) ;
 int task_uid (struct task_struct*) ;
 int tasklist_lock ;
 int thread_group_cputime_adjusted (struct task_struct*,scalar_t__*,scalar_t__*) ;
 scalar_t__ thread_group_leader (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int write_lock_irq (int *) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int wait_task_zombie(struct wait_opts *wo, struct task_struct *p)
{
 int state, status;
 pid_t pid = task_pid_vnr(p);
 uid_t uid = from_kuid_munged(current_user_ns(), task_uid(p));
 struct waitid_info *infop;

 if (!likely(wo->wo_flags & WEXITED))
  return 0;

 if (unlikely(wo->wo_flags & WNOWAIT)) {
  status = p->exit_code;
  get_task_struct(p);
  read_unlock(&tasklist_lock);
  sched_annotate_sleep();
  if (wo->wo_rusage)
   getrusage(p, RUSAGE_BOTH, wo->wo_rusage);
  put_task_struct(p);
  goto out_info;
 }



 state = (ptrace_reparented(p) && thread_group_leader(p)) ?
  EXIT_TRACE : EXIT_DEAD;
 if (cmpxchg(&p->exit_state, EXIT_ZOMBIE, state) != EXIT_ZOMBIE)
  return 0;



 read_unlock(&tasklist_lock);
 sched_annotate_sleep();




 if (state == EXIT_DEAD && thread_group_leader(p)) {
  struct signal_struct *sig = p->signal;
  struct signal_struct *psig = current->signal;
  unsigned long maxrss;
  u64 tgutime, tgstime;
  thread_group_cputime_adjusted(p, &tgutime, &tgstime);
  spin_lock_irq(&current->sighand->siglock);
  write_seqlock(&psig->stats_lock);
  psig->cutime += tgutime + sig->cutime;
  psig->cstime += tgstime + sig->cstime;
  psig->cgtime += task_gtime(p) + sig->gtime + sig->cgtime;
  psig->cmin_flt +=
   p->min_flt + sig->min_flt + sig->cmin_flt;
  psig->cmaj_flt +=
   p->maj_flt + sig->maj_flt + sig->cmaj_flt;
  psig->cnvcsw +=
   p->nvcsw + sig->nvcsw + sig->cnvcsw;
  psig->cnivcsw +=
   p->nivcsw + sig->nivcsw + sig->cnivcsw;
  psig->cinblock +=
   task_io_get_inblock(p) +
   sig->inblock + sig->cinblock;
  psig->coublock +=
   task_io_get_oublock(p) +
   sig->oublock + sig->coublock;
  maxrss = max(sig->maxrss, sig->cmaxrss);
  if (psig->cmaxrss < maxrss)
   psig->cmaxrss = maxrss;
  task_io_accounting_add(&psig->ioac, &p->ioac);
  task_io_accounting_add(&psig->ioac, &sig->ioac);
  write_sequnlock(&psig->stats_lock);
  spin_unlock_irq(&current->sighand->siglock);
 }

 if (wo->wo_rusage)
  getrusage(p, RUSAGE_BOTH, wo->wo_rusage);
 status = (p->signal->flags & SIGNAL_GROUP_EXIT)
  ? p->signal->group_exit_code : p->exit_code;
 wo->wo_stat = status;

 if (state == EXIT_TRACE) {
  write_lock_irq(&tasklist_lock);

  ptrace_unlink(p);


  state = EXIT_ZOMBIE;
  if (do_notify_parent(p, p->exit_signal))
   state = EXIT_DEAD;
  p->exit_state = state;
  write_unlock_irq(&tasklist_lock);
 }
 if (state == EXIT_DEAD)
  release_task(p);

out_info:
 infop = wo->wo_info;
 if (infop) {
  if ((status & 0x7f) == 0) {
   infop->cause = CLD_EXITED;
   infop->status = status >> 8;
  } else {
   infop->cause = (status & 0x80) ? CLD_DUMPED : CLD_KILLED;
   infop->status = status & 0x7f;
  }
  infop->pid = pid;
  infop->uid = uid;
 }

 return pid;
}
