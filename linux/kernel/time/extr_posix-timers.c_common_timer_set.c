
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct k_itimer {int it_active; int it_requeue_pending; scalar_t__ it_sigev_notify; void* it_interval; scalar_t__ it_overrun_last; struct k_clock* kclock; } ;
struct k_clock {scalar_t__ (* timer_try_to_cancel ) (struct k_itimer*) ;int (* timer_arm ) (struct k_itimer*,void*,int,int) ;} ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct itimerspec64 {TYPE_1__ it_value; TYPE_1__ it_interval; } ;
typedef void* ktime_t ;


 int REQUEUE_PENDING ;
 scalar_t__ SIGEV_NONE ;
 int TIMER_ABSTIME ;
 int TIMER_RETRY ;
 int common_timer_get (struct k_itimer*,struct itimerspec64*) ;
 scalar_t__ stub1 (struct k_itimer*) ;
 int stub2 (struct k_itimer*,void*,int,int) ;
 void* timespec64_to_ktime (TYPE_1__) ;

int common_timer_set(struct k_itimer *timr, int flags,
       struct itimerspec64 *new_setting,
       struct itimerspec64 *old_setting)
{
 const struct k_clock *kc = timr->kclock;
 bool sigev_none;
 ktime_t expires;

 if (old_setting)
  common_timer_get(timr, old_setting);


 timr->it_interval = 0;




 if (kc->timer_try_to_cancel(timr) < 0)
  return TIMER_RETRY;

 timr->it_active = 0;
 timr->it_requeue_pending = (timr->it_requeue_pending + 2) &
  ~REQUEUE_PENDING;
 timr->it_overrun_last = 0;


 if (!new_setting->it_value.tv_sec && !new_setting->it_value.tv_nsec)
  return 0;

 timr->it_interval = timespec64_to_ktime(new_setting->it_interval);
 expires = timespec64_to_ktime(new_setting->it_value);
 sigev_none = timr->it_sigev_notify == SIGEV_NONE;

 kc->timer_arm(timr, expires, flags & TIMER_ABSTIME, sigev_none);
 timr->it_active = !sigev_none;
 return 0;
}
