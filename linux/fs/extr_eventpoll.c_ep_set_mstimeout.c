
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {long tv_sec; long tv_nsec; } ;


 long MSEC_PER_SEC ;
 long NSEC_PER_MSEC ;
 int ktime_get_ts64 (struct timespec64*) ;
 struct timespec64 timespec64_add_safe (struct timespec64,struct timespec64) ;

__attribute__((used)) static inline struct timespec64 ep_set_mstimeout(long ms)
{
 struct timespec64 now, ts = {
  .tv_sec = ms / MSEC_PER_SEC,
  .tv_nsec = NSEC_PER_MSEC * (ms % MSEC_PER_SEC),
 };

 ktime_get_ts64(&now);
 return timespec64_add_safe(now, ts);
}
