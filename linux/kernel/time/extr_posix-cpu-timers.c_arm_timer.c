
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_6__ {struct posix_cputimer_base* bases; } ;
struct task_struct {TYPE_4__* signal; TYPE_2__ posix_cputimers; } ;
struct posix_cputimer_base {scalar_t__ nextevt; int tqhead; } ;
struct cpu_timer {struct task_struct* task; } ;
struct TYPE_5__ {struct cpu_timer cpu; } ;
struct k_itimer {int it_clock; TYPE_1__ it; } ;
struct TYPE_7__ {struct posix_cputimer_base* bases; } ;
struct TYPE_8__ {TYPE_3__ posix_cputimers; } ;


 scalar_t__ CPUCLOCK_PERTHREAD (int ) ;
 int CPUCLOCK_WHICH (int ) ;
 int TICK_DEP_BIT_POSIX_TIMER ;
 int cpu_timer_enqueue (int *,struct cpu_timer*) ;
 scalar_t__ cpu_timer_getexpires (struct cpu_timer*) ;
 int tick_dep_set_signal (TYPE_4__*,int ) ;
 int tick_dep_set_task (struct task_struct*,int ) ;

__attribute__((used)) static void arm_timer(struct k_itimer *timer)
{
 int clkidx = CPUCLOCK_WHICH(timer->it_clock);
 struct cpu_timer *ctmr = &timer->it.cpu;
 u64 newexp = cpu_timer_getexpires(ctmr);
 struct task_struct *p = ctmr->task;
 struct posix_cputimer_base *base;

 if (CPUCLOCK_PERTHREAD(timer->it_clock))
  base = p->posix_cputimers.bases + clkidx;
 else
  base = p->signal->posix_cputimers.bases + clkidx;

 if (!cpu_timer_enqueue(&base->tqhead, ctmr))
  return;







 if (newexp < base->nextevt)
  base->nextevt = newexp;

 if (CPUCLOCK_PERTHREAD(timer->it_clock))
  tick_dep_set_task(p, TICK_DEP_BIT_POSIX_TIMER);
 else
  tick_dep_set_signal(p->signal, TICK_DEP_BIT_POSIX_TIMER);
}
