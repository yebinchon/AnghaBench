
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kernel_timex {int status; } ;


 int STA_PLL ;
 int STA_RONLY ;
 int STA_UNSYNC ;
 int TIME64_MAX ;
 int TIME_OK ;
 int __ktime_get_real_seconds () ;
 int ntp_next_leap_sec ;
 int pps_reset_freq_interval () ;
 int time_reftime ;
 int time_state ;
 int time_status ;

__attribute__((used)) static inline void process_adj_status(const struct __kernel_timex *txc)
{
 if ((time_status & STA_PLL) && !(txc->status & STA_PLL)) {
  time_state = TIME_OK;
  time_status = STA_UNSYNC;
  ntp_next_leap_sec = TIME64_MAX;

  pps_reset_freq_interval();
 }





 if (!(time_status & STA_PLL) && (txc->status & STA_PLL))
  time_reftime = __ktime_get_real_seconds();


 time_status &= STA_RONLY;
 time_status |= txc->status & ~STA_RONLY;
}
