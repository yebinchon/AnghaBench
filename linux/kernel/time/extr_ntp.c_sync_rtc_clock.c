
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int tv_sec; } ;
struct TYPE_2__ {int tz_minuteswest; } ;


 int CONFIG_RTC_SYSTOHC ;
 int ENODEV ;
 int IS_ENABLED (int ) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 scalar_t__ persistent_clock_is_local ;
 int rtc_set_ntp_time (struct timespec64,unsigned long*) ;
 int sched_sync_hw_clock (struct timespec64,unsigned long,int) ;
 TYPE_1__ sys_tz ;

__attribute__((used)) static void sync_rtc_clock(void)
{
 unsigned long target_nsec;
 struct timespec64 adjust, now;
 int rc;

 if (!IS_ENABLED(CONFIG_RTC_SYSTOHC))
  return;

 ktime_get_real_ts64(&now);

 adjust = now;
 if (persistent_clock_is_local)
  adjust.tv_sec -= (sys_tz.tz_minuteswest * 60);





 rc = rtc_set_ntp_time(adjust, &target_nsec);
 if (rc == -ENODEV)
  return;

 sched_sync_hw_clock(now, target_nsec, rc);
}
