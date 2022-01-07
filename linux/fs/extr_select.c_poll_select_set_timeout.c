
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long time64_t ;
struct timespec64 {long tv_sec; long tv_nsec; } ;


 int EINVAL ;
 int ktime_get_ts64 (struct timespec64*) ;
 struct timespec64 timespec64_add_safe (struct timespec64,struct timespec64) ;
 int timespec64_valid (struct timespec64*) ;

int poll_select_set_timeout(struct timespec64 *to, time64_t sec, long nsec)
{
 struct timespec64 ts = {.tv_sec = sec, .tv_nsec = nsec};

 if (!timespec64_valid(&ts))
  return -EINVAL;


 if (!sec && !nsec) {
  to->tv_sec = to->tv_nsec = 0;
 } else {
  ktime_get_ts64(to);
  *to = timespec64_add_safe(*to, ts);
 }
 return 0;
}
