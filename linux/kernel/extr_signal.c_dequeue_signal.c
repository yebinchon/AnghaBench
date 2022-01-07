
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct task_struct {TYPE_3__* sighand; TYPE_2__* signal; int pending; } ;
struct hrtimer {TYPE_1__* base; } ;
typedef int sigset_t ;
struct TYPE_12__ {scalar_t__ si_sys_private; } ;
typedef TYPE_4__ kernel_siginfo_t ;
struct TYPE_13__ {int jobctl; } ;
struct TYPE_11__ {int siglock; } ;
struct TYPE_10__ {scalar_t__ it_real_incr; struct hrtimer real_timer; int shared_pending; } ;
struct TYPE_9__ {int (* get_time ) () ;} ;


 int JOBCTL_STOP_DEQUEUED ;
 int SIGALRM ;
 int __dequeue_signal (int *,int *,TYPE_4__*,int*) ;
 TYPE_7__* current ;
 int hrtimer_forward (struct hrtimer*,int ,scalar_t__) ;
 int hrtimer_is_queued (struct hrtimer*) ;
 int hrtimer_restart (struct hrtimer*) ;
 int posixtimer_rearm (TYPE_4__*) ;
 int recalc_sigpending () ;
 int sig_kernel_stop (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;
 scalar_t__ unlikely (int) ;

int dequeue_signal(struct task_struct *tsk, sigset_t *mask, kernel_siginfo_t *info)
{
 bool resched_timer = 0;
 int signr;




 signr = __dequeue_signal(&tsk->pending, mask, info, &resched_timer);
 if (!signr) {
  signr = __dequeue_signal(&tsk->signal->shared_pending,
      mask, info, &resched_timer);
 }

 recalc_sigpending();
 if (!signr)
  return 0;

 if (unlikely(sig_kernel_stop(signr))) {
  current->jobctl |= JOBCTL_STOP_DEQUEUED;
 }
 return signr;
}
