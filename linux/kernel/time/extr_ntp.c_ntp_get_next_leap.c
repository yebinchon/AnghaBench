
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ktime_t ;


 int KTIME_MAX ;
 int STA_INS ;
 scalar_t__ TIME_INS ;
 int ktime_set (int ,int ) ;
 int ntp_next_leap_sec ;
 scalar_t__ time_state ;
 int time_status ;

ktime_t ntp_get_next_leap(void)
{
 ktime_t ret;

 if ((time_state == TIME_INS) && (time_status & STA_INS))
  return ktime_set(ntp_next_leap_sec, 0);
 ret = KTIME_MAX;
 return ret;
}
