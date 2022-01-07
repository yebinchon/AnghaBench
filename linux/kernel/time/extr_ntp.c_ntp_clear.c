
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* NTP_PHASE_LIMIT ;
 int STA_UNSYNC ;
 int TIME64_MAX ;
 int ntp_next_leap_sec ;
 int ntp_update_frequency () ;
 int pps_clear () ;
 int tick_length ;
 int tick_length_base ;
 scalar_t__ time_adjust ;
 void* time_esterror ;
 void* time_maxerror ;
 scalar_t__ time_offset ;
 int time_status ;

void ntp_clear(void)
{
 time_adjust = 0;
 time_status |= STA_UNSYNC;
 time_maxerror = NTP_PHASE_LIMIT;
 time_esterror = NTP_PHASE_LIMIT;

 ntp_update_frequency();

 tick_length = tick_length_base;
 time_offset = 0;

 ntp_next_leap_sec = TIME64_MAX;

 pps_clear();
}
