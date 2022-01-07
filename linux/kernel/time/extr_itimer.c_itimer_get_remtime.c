
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct hrtimer {int dummy; } ;
typedef scalar_t__ ktime_t ;


 scalar_t__ NSEC_PER_USEC ;
 scalar_t__ __hrtimer_get_remaining (struct hrtimer*,int) ;
 scalar_t__ hrtimer_active (struct hrtimer*) ;
 struct timeval ktime_to_timeval (scalar_t__) ;

__attribute__((used)) static struct timeval itimer_get_remtime(struct hrtimer *timer)
{
 ktime_t rem = __hrtimer_get_remaining(timer, 1);






 if (hrtimer_active(timer)) {
  if (rem <= 0)
   rem = NSEC_PER_USEC;
 } else
  rem = 0;

 return ktime_to_timeval(rem);
}
