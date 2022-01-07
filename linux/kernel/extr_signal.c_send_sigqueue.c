
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sigpending {int signal; int list; } ;
struct task_struct {struct sigpending pending; TYPE_1__* signal; } ;
struct TYPE_4__ {int si_signo; scalar_t__ si_code; scalar_t__ si_overrun; } ;
struct sigqueue {int flags; TYPE_2__ info; int list; } ;
struct pid {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_3__ {struct sigpending shared_pending; } ;


 int BUG_ON (int) ;
 int PIDTYPE_PID ;
 int SIGQUEUE_PREALLOC ;
 scalar_t__ SI_TIMER ;
 int TRACE_SIGNAL_ALREADY_PENDING ;
 int TRACE_SIGNAL_DELIVERED ;
 int TRACE_SIGNAL_IGNORED ;
 int complete_signal (int,struct task_struct*,int) ;
 int likely (int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int lock_task_sighand (struct task_struct*,unsigned long*) ;
 struct task_struct* pid_task (struct pid*,int) ;
 int prepare_signal (int,struct task_struct*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sigaddset (int *,int) ;
 int signalfd_notify (struct task_struct*,int) ;
 int trace_signal_generate (int,TYPE_2__*,struct task_struct*,int,int) ;
 scalar_t__ unlikely (int) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

int send_sigqueue(struct sigqueue *q, struct pid *pid, enum pid_type type)
{
 int sig = q->info.si_signo;
 struct sigpending *pending;
 struct task_struct *t;
 unsigned long flags;
 int ret, result;

 BUG_ON(!(q->flags & SIGQUEUE_PREALLOC));

 ret = -1;
 rcu_read_lock();
 t = pid_task(pid, type);
 if (!t || !likely(lock_task_sighand(t, &flags)))
  goto ret;

 ret = 1;
 result = TRACE_SIGNAL_IGNORED;
 if (!prepare_signal(sig, t, 0))
  goto out;

 ret = 0;
 if (unlikely(!list_empty(&q->list))) {




  BUG_ON(q->info.si_code != SI_TIMER);
  q->info.si_overrun++;
  result = TRACE_SIGNAL_ALREADY_PENDING;
  goto out;
 }
 q->info.si_overrun = 0;

 signalfd_notify(t, sig);
 pending = (type != PIDTYPE_PID) ? &t->signal->shared_pending : &t->pending;
 list_add_tail(&q->list, &pending->list);
 sigaddset(&pending->signal, sig);
 complete_signal(sig, t, type);
 result = TRACE_SIGNAL_DELIVERED;
out:
 trace_signal_generate(sig, &q->info, t, type != PIDTYPE_PID, result);
 unlock_task_sighand(t, &flags);
ret:
 rcu_read_unlock();
 return ret;
}
