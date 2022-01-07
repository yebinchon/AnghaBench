
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int clockid_t ;


 int HRTIMER_MODE_ABS ;
 int HRTIMER_MODE_REL ;
 int TIMER_ABSTIME ;
 int hrtimer_nanosleep (struct timespec64 const*,int ,int const) ;

__attribute__((used)) static int common_nsleep(const clockid_t which_clock, int flags,
    const struct timespec64 *rqtp)
{
 return hrtimer_nanosleep(rqtp, flags & TIMER_ABSTIME ?
     HRTIMER_MODE_ABS : HRTIMER_MODE_REL,
     which_clock);
}
