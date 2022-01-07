
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


 unsigned int CPUCLOCK_VIRT ;
 int ITIMER_PROF ;
 int ITIMER_VIRTUAL ;
 scalar_t__ TICK_NSEC ;
 scalar_t__ ktime_to_ns (int ) ;
 void* ns_to_timeval (scalar_t__) ;
 int set_process_cpu_timer (struct task_struct*,unsigned int,scalar_t__*,scalar_t__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timeval_to_ktime (void*) ;
 int trace_itimer_state (int ,struct itimerval const* const,scalar_t__) ;

__attribute__((used)) static void set_cpu_itimer(struct task_struct *tsk, unsigned int clock_id,
      const struct itimerval *const value,
      struct itimerval *const ovalue)
{
 u64 oval, nval, ointerval, ninterval;
 struct cpu_itimer *it = &tsk->signal->it[clock_id];





 nval = ktime_to_ns(timeval_to_ktime(value->it_value));
 ninterval = ktime_to_ns(timeval_to_ktime(value->it_interval));

 spin_lock_irq(&tsk->sighand->siglock);

 oval = it->expires;
 ointerval = it->incr;
 if (oval || nval) {
  if (nval > 0)
   nval += TICK_NSEC;
  set_process_cpu_timer(tsk, clock_id, &nval, &oval);
 }
 it->expires = nval;
 it->incr = ninterval;
 trace_itimer_state(clock_id == CPUCLOCK_VIRT ?
      ITIMER_VIRTUAL : ITIMER_PROF, value, nval);

 spin_unlock_irq(&tsk->sighand->siglock);

 if (ovalue) {
  ovalue->it_value = ns_to_timeval(oval);
  ovalue->it_interval = ns_to_timeval(ointerval);
 }
}
