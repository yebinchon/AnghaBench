
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int clockid_t ;





 int EINVAL ;
 int ktime_get_boottime_ts64 (struct timespec64*) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int ktime_get_ts64 (struct timespec64*) ;

int do_clock_gettime(clockid_t which_clock, struct timespec64 *tp)
{
 switch (which_clock) {
 case 128:
  ktime_get_real_ts64(tp);
  break;
 case 129:
  ktime_get_ts64(tp);
  break;
 case 130:
  ktime_get_boottime_ts64(tp);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
