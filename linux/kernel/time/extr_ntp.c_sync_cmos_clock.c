
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int tv_sec; } ;
struct TYPE_2__ {int tz_minuteswest; } ;


 int CONFIG_GENERIC_CMOS_UPDATE ;
 int ENODEV ;
 int EPROTO ;
 int IS_ENABLED (int ) ;
 int NSEC_PER_SEC ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 scalar_t__ persistent_clock_is_local ;
 scalar_t__ rtc_tv_nsec_ok (int,struct timespec64*,struct timespec64*) ;
 int sched_sync_hw_clock (struct timespec64,long,int) ;
 TYPE_1__ sys_tz ;
 int update_persistent_clock64 (struct timespec64) ;

__attribute__((used)) static bool sync_cmos_clock(void)
{
 static bool no_cmos;
 struct timespec64 now;
 struct timespec64 adjust;
 int rc = -EPROTO;
 long target_nsec = NSEC_PER_SEC / 2;

 if (!IS_ENABLED(CONFIG_GENERIC_CMOS_UPDATE))
  return 0;

 if (no_cmos)
  return 0;
 ktime_get_real_ts64(&now);
 if (rtc_tv_nsec_ok(-1 * target_nsec, &adjust, &now)) {
  if (persistent_clock_is_local)
   adjust.tv_sec -= (sys_tz.tz_minuteswest * 60);
  rc = update_persistent_clock64(adjust);




  if (rc == -ENODEV) {
   no_cmos = 1;
   return 0;
  }
 }

 sched_sync_hw_clock(now, target_nsec, rc);
 return 1;
}
