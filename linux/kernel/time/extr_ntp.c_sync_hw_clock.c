
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int ntp_synced () ;
 scalar_t__ sync_cmos_clock () ;
 int sync_rtc_clock () ;

__attribute__((used)) static void sync_hw_clock(struct work_struct *work)
{
 if (!ntp_synced())
  return;

 if (sync_cmos_clock())
  return;

 sync_rtc_clock();
}
