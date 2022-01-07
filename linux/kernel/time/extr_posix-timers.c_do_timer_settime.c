
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_t ;
struct k_itimer {struct k_clock* kclock; } ;
struct k_clock {int (* timer_set ) (struct k_itimer*,int,struct itimerspec64*,struct itimerspec64*) ;} ;
struct itimerspec64 {int it_value; int it_interval; } ;


 int EINVAL ;
 int TIMER_RETRY ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct k_itimer* lock_timer (int ,unsigned long*) ;
 int memset (struct itimerspec64*,int ,int) ;
 int stub1 (struct k_itimer*,int,struct itimerspec64*,struct itimerspec64*) ;
 struct k_itimer* timer_wait_running (struct k_itimer*,unsigned long*) ;
 int timespec64_valid (int *) ;
 int unlock_timer (struct k_itimer*,unsigned long) ;

__attribute__((used)) static int do_timer_settime(timer_t timer_id, int tmr_flags,
       struct itimerspec64 *new_spec64,
       struct itimerspec64 *old_spec64)
{
 const struct k_clock *kc;
 struct k_itimer *timr;
 unsigned long flags;
 int error = 0;

 if (!timespec64_valid(&new_spec64->it_interval) ||
     !timespec64_valid(&new_spec64->it_value))
  return -EINVAL;

 if (old_spec64)
  memset(old_spec64, 0, sizeof(*old_spec64));

 timr = lock_timer(timer_id, &flags);
retry:
 if (!timr)
  return -EINVAL;

 kc = timr->kclock;
 if (WARN_ON_ONCE(!kc || !kc->timer_set))
  error = -EINVAL;
 else
  error = kc->timer_set(timr, tmr_flags, new_spec64, old_spec64);

 if (error == TIMER_RETRY) {

  old_spec64 = ((void*)0);

  timr = timer_wait_running(timr, &flags);
  goto retry;
 }
 unlock_timer(timr, flags);

 return error;
}
