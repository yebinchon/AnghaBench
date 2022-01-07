
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct sighand_struct {int dummy; } ;
struct cpu_timer {struct task_struct* task; } ;
struct TYPE_3__ {struct cpu_timer cpu; } ;
struct k_itimer {int it_clock; int it_interval; TYPE_1__ it; } ;
struct TYPE_4__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct itimerspec64 {TYPE_2__ it_value; int it_interval; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_PERTHREAD (int ) ;
 int CPUCLOCK_WHICH (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ cpu_clock_sample (int ,struct task_struct*) ;
 scalar_t__ cpu_clock_sample_group (int ,struct task_struct*,int) ;
 scalar_t__ cpu_timer_getexpires (struct cpu_timer*) ;
 int cpu_timer_setexpires (struct cpu_timer*,int ) ;
 int ktime_to_timespec64 (int ) ;
 struct sighand_struct* lock_task_sighand (struct task_struct*,unsigned long*) ;
 TYPE_2__ ns_to_timespec64 (scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static void posix_cpu_timer_get(struct k_itimer *timer, struct itimerspec64 *itp)
{
 clockid_t clkid = CPUCLOCK_WHICH(timer->it_clock);
 struct cpu_timer *ctmr = &timer->it.cpu;
 u64 now, expires = cpu_timer_getexpires(ctmr);
 struct task_struct *p = ctmr->task;

 if (WARN_ON_ONCE(!p))
  return;




 itp->it_interval = ktime_to_timespec64(timer->it_interval);

 if (!expires)
  return;




 if (CPUCLOCK_PERTHREAD(timer->it_clock)) {
  now = cpu_clock_sample(clkid, p);
 } else {
  struct sighand_struct *sighand;
  unsigned long flags;






  sighand = lock_task_sighand(p, &flags);
  if (unlikely(sighand == ((void*)0))) {





   cpu_timer_setexpires(ctmr, 0);
   return;
  } else {
   now = cpu_clock_sample_group(clkid, p, 0);
   unlock_task_sighand(p, &flags);
  }
 }

 if (now < expires) {
  itp->it_value = ns_to_timespec64(expires - now);
 } else {




  itp->it_value.tv_nsec = 1;
  itp->it_value.tv_sec = 0;
 }
}
