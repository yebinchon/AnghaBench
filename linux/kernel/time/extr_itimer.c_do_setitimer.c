
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct itimerval {int it_interval; int it_value; } ;
struct hrtimer {int dummy; } ;
typedef void* ktime_t ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {void* it_real_incr; struct hrtimer real_timer; } ;


 int CPUCLOCK_PROF ;
 int CPUCLOCK_VIRT ;
 int EINVAL ;
 int HRTIMER_MODE_REL ;



 struct task_struct* current ;
 int hrtimer_cancel_wait_running (struct hrtimer*) ;
 int hrtimer_start (struct hrtimer*,void*,int ) ;
 int hrtimer_try_to_cancel (struct hrtimer*) ;
 int itimer_get_remtime (struct hrtimer*) ;
 int ktime_to_timeval (void*) ;
 int set_cpu_itimer (struct task_struct*,int ,struct itimerval*,struct itimerval*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 void* timeval_to_ktime (int ) ;
 int timeval_valid (int *) ;
 int trace_itimer_state (int const,struct itimerval*,int ) ;

int do_setitimer(int which, struct itimerval *value, struct itimerval *ovalue)
{
 struct task_struct *tsk = current;
 struct hrtimer *timer;
 ktime_t expires;




 if (!timeval_valid(&value->it_value) ||
     !timeval_valid(&value->it_interval))
  return -EINVAL;

 switch (which) {
 case 129:
again:
  spin_lock_irq(&tsk->sighand->siglock);
  timer = &tsk->signal->real_timer;
  if (ovalue) {
   ovalue->it_value = itimer_get_remtime(timer);
   ovalue->it_interval
    = ktime_to_timeval(tsk->signal->it_real_incr);
  }

  if (hrtimer_try_to_cancel(timer) < 0) {
   spin_unlock_irq(&tsk->sighand->siglock);
   hrtimer_cancel_wait_running(timer);
   goto again;
  }
  expires = timeval_to_ktime(value->it_value);
  if (expires != 0) {
   tsk->signal->it_real_incr =
    timeval_to_ktime(value->it_interval);
   hrtimer_start(timer, expires, HRTIMER_MODE_REL);
  } else
   tsk->signal->it_real_incr = 0;

  trace_itimer_state(129, value, 0);
  spin_unlock_irq(&tsk->sighand->siglock);
  break;
 case 128:
  set_cpu_itimer(tsk, CPUCLOCK_VIRT, value, ovalue);
  break;
 case 130:
  set_cpu_itimer(tsk, CPUCLOCK_PROF, value, ovalue);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
