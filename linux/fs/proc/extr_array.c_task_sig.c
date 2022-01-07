
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int signal; } ;
struct task_struct {int blocked; TYPE_3__* signal; TYPE_1__ pending; } ;
struct seq_file {int dummy; } ;
typedef int sigset_t ;
struct TYPE_10__ {TYPE_4__* user; } ;
struct TYPE_9__ {int sigpending; } ;
struct TYPE_7__ {int signal; } ;
struct TYPE_8__ {TYPE_2__ shared_pending; } ;


 int RLIMIT_SIGPENDING ;
 TYPE_5__* __task_cred (struct task_struct*) ;
 unsigned int atomic_read (int *) ;
 int collect_sigign_sigcatch (struct task_struct*,int *,int *) ;
 int get_nr_threads (struct task_struct*) ;
 scalar_t__ lock_task_sighand (struct task_struct*,unsigned long*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int render_sigset_t (struct seq_file*,char*,int *) ;
 int seq_put_decimal_ull (struct seq_file*,char*,unsigned long) ;
 int sigemptyset (int *) ;
 unsigned long task_rlimit (struct task_struct*,int ) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static inline void task_sig(struct seq_file *m, struct task_struct *p)
{
 unsigned long flags;
 sigset_t pending, shpending, blocked, ignored, caught;
 int num_threads = 0;
 unsigned int qsize = 0;
 unsigned long qlim = 0;

 sigemptyset(&pending);
 sigemptyset(&shpending);
 sigemptyset(&blocked);
 sigemptyset(&ignored);
 sigemptyset(&caught);

 if (lock_task_sighand(p, &flags)) {
  pending = p->pending.signal;
  shpending = p->signal->shared_pending.signal;
  blocked = p->blocked;
  collect_sigign_sigcatch(p, &ignored, &caught);
  num_threads = get_nr_threads(p);
  rcu_read_lock();
  qsize = atomic_read(&__task_cred(p)->user->sigpending);
  rcu_read_unlock();
  qlim = task_rlimit(p, RLIMIT_SIGPENDING);
  unlock_task_sighand(p, &flags);
 }

 seq_put_decimal_ull(m, "Threads:\t", num_threads);
 seq_put_decimal_ull(m, "\nSigQ:\t", qsize);
 seq_put_decimal_ull(m, "/", qlim);


 render_sigset_t(m, "\nSigPnd:\t", &pending);
 render_sigset_t(m, "ShdPnd:\t", &shpending);
 render_sigset_t(m, "SigBlk:\t", &blocked);
 render_sigset_t(m, "SigIgn:\t", &ignored);
 render_sigset_t(m, "SigCgt:\t", &caught);
}
