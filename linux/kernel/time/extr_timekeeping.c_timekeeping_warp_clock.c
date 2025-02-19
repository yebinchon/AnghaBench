
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {int tz_minuteswest; } ;


 int persistent_clock_is_local ;
 TYPE_1__ sys_tz ;
 int timekeeping_inject_offset (struct timespec64*) ;

void timekeeping_warp_clock(void)
{
 if (sys_tz.tz_minuteswest != 0) {
  struct timespec64 adjust;

  persistent_clock_is_local = 1;
  adjust.tv_sec = sys_tz.tz_minuteswest * 60;
  adjust.tv_nsec = 0;
  timekeeping_inject_offset(&adjust);
 }
}
