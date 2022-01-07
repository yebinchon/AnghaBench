
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;
typedef int __be32 ;


 int MSEC_PER_SEC ;
 int NSEC_PER_MSEC ;
 int SECONDS_PER_DAY ;
 int div_u64_rem (int ,int ,int*) ;
 int htonl (int) ;
 int ktime_get_real_ts64 (struct timespec64*) ;

__be32 inet_current_timestamp(void)
{
 u32 secs;
 u32 msecs;
 struct timespec64 ts;

 ktime_get_real_ts64(&ts);


 (void)div_u64_rem(ts.tv_sec, SECONDS_PER_DAY, &secs);

 msecs = secs * MSEC_PER_SEC;

 msecs += (u32)ts.tv_nsec / NSEC_PER_MSEC;


 return htonl(msecs);
}
