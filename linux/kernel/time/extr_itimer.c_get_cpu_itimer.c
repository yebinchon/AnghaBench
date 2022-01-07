
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct itimerval {void* it_interval; void* it_value; } ;
struct cpu_itimer {scalar_t__ expires; scalar_t__ incr; } ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {struct cpu_itimer* it; } ;


 int CPUCLOCK_MAX ;
 scalar_t__ TICK_NSEC ;
 void* ns_to_timeval (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thread_group_sample_cputime (struct task_struct*,scalar_t__*) ;

__attribute__((used)) static void get_cpu_itimer(struct task_struct *tsk, unsigned int clock_id,
      struct itimerval *const value)
{
 u64 val, interval;
 struct cpu_itimer *it = &tsk->signal->it[clock_id];

 spin_lock_irq(&tsk->sighand->siglock);

 val = it->expires;
 interval = it->incr;
 if (val) {
  u64 t, samples[CPUCLOCK_MAX];

  thread_group_sample_cputime(tsk, samples);
  t = samples[clock_id];

  if (val < t)

   val = TICK_NSEC;
  else
   val -= t;
 }

 spin_unlock_irq(&tsk->sighand->siglock);

 value->it_value = ns_to_timeval(val);
 value->it_interval = ns_to_timeval(interval);
}
