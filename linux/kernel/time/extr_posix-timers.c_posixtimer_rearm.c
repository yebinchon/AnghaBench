
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_siginfo {scalar_t__ si_sys_private; int si_overrun; int si_tid; } ;
struct k_itimer {scalar_t__ it_requeue_pending; int it_active; long long it_overrun_last; long long it_overrun; TYPE_1__* kclock; scalar_t__ it_interval; } ;
struct TYPE_2__ {int (* timer_rearm ) (struct k_itimer*) ;} ;


 struct k_itimer* lock_timer (int ,unsigned long*) ;
 int stub1 (struct k_itimer*) ;
 int timer_overrun_to_int (struct k_itimer*,int ) ;
 int unlock_timer (struct k_itimer*,unsigned long) ;

void posixtimer_rearm(struct kernel_siginfo *info)
{
 struct k_itimer *timr;
 unsigned long flags;

 timr = lock_timer(info->si_tid, &flags);
 if (!timr)
  return;

 if (timr->it_interval && timr->it_requeue_pending == info->si_sys_private) {
  timr->kclock->timer_rearm(timr);

  timr->it_active = 1;
  timr->it_overrun_last = timr->it_overrun;
  timr->it_overrun = -1LL;
  ++timr->it_requeue_pending;

  info->si_overrun = timer_overrun_to_int(timr, info->si_overrun);
 }

 unlock_timer(timr, flags);
}
