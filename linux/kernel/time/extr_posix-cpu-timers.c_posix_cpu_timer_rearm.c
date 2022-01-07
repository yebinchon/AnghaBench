
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {int exit_state; } ;
struct sighand_struct {int dummy; } ;
struct cpu_timer {struct task_struct* task; } ;
struct TYPE_2__ {struct cpu_timer cpu; } ;
struct k_itimer {int it_clock; TYPE_1__ it; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_PERTHREAD (int ) ;
 int CPUCLOCK_WHICH (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int arm_timer (struct k_itimer*) ;
 int bump_cpu_timer (struct k_itimer*,int ) ;
 int cpu_clock_sample (int ,struct task_struct*) ;
 int cpu_clock_sample_group (int ,struct task_struct*,int) ;
 int cpu_timer_setexpires (struct cpu_timer*,int ) ;
 struct sighand_struct* lock_task_sighand (struct task_struct*,unsigned long*) ;
 scalar_t__ thread_group_empty (struct task_struct*) ;
 scalar_t__ unlikely (int ) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static void posix_cpu_timer_rearm(struct k_itimer *timer)
{
 clockid_t clkid = CPUCLOCK_WHICH(timer->it_clock);
 struct cpu_timer *ctmr = &timer->it.cpu;
 struct task_struct *p = ctmr->task;
 struct sighand_struct *sighand;
 unsigned long flags;
 u64 now;

 if (WARN_ON_ONCE(!p))
  return;




 if (CPUCLOCK_PERTHREAD(timer->it_clock)) {
  now = cpu_clock_sample(clkid, p);
  bump_cpu_timer(timer, now);
  if (unlikely(p->exit_state))
   return;


  sighand = lock_task_sighand(p, &flags);
  if (!sighand)
   return;
 } else {




  sighand = lock_task_sighand(p, &flags);
  if (unlikely(sighand == ((void*)0))) {




   cpu_timer_setexpires(ctmr, 0);
   return;
  } else if (unlikely(p->exit_state) && thread_group_empty(p)) {

   goto unlock;
  }
  now = cpu_clock_sample_group(clkid, p, 1);
  bump_cpu_timer(timer, now);

 }




 arm_timer(timer);
unlock:
 unlock_task_sighand(p, &flags);
}
