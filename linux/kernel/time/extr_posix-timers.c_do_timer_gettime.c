
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_t ;
struct k_itimer {struct k_clock* kclock; } ;
struct k_clock {int (* timer_get ) (struct k_itimer*,struct itimerspec64*) ;} ;
struct itimerspec64 {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct k_itimer* lock_timer (int ,unsigned long*) ;
 int memset (struct itimerspec64*,int ,int) ;
 int stub1 (struct k_itimer*,struct itimerspec64*) ;
 int unlock_timer (struct k_itimer*,unsigned long) ;

__attribute__((used)) static int do_timer_gettime(timer_t timer_id, struct itimerspec64 *setting)
{
 struct k_itimer *timr;
 const struct k_clock *kc;
 unsigned long flags;
 int ret = 0;

 timr = lock_timer(timer_id, &flags);
 if (!timr)
  return -EINVAL;

 memset(setting, 0, sizeof(*setting));
 kc = timr->kclock;
 if (WARN_ON_ONCE(!kc || !kc->timer_get))
  ret = -EINVAL;
 else
  kc->timer_get(timr, setting);

 unlock_timer(timr, flags);
 return ret;
}
