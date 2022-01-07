
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long s64 ;


 int MAXFREQ_SCALED ;
 int MAXPHASE ;
 long NSEC_PER_USEC ;
 int NTP_INTERVAL_FREQ ;
 int NTP_SCALE_SHIFT ;
 int SHIFT_PLL ;
 int STA_FREQHOLD ;
 int STA_NANO ;
 int STA_PLL ;
 int USEC_PER_SEC ;
 scalar_t__ __ktime_get_real_seconds () ;
 long clamp (long,int ,int ) ;
 int div_s64 (long,int ) ;
 long max (long,int ) ;
 long min (long,int ) ;
 long ntp_update_offset_fll (long,long) ;
 int time_constant ;
 long time_freq ;
 int time_offset ;
 scalar_t__ time_reftime ;
 int time_status ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ntp_update_offset(long offset)
{
 s64 freq_adj;
 s64 offset64;
 long secs;

 if (!(time_status & STA_PLL))
  return;

 if (!(time_status & STA_NANO)) {

  offset = clamp(offset, -USEC_PER_SEC, USEC_PER_SEC);
  offset *= NSEC_PER_USEC;
 }





 offset = clamp(offset, -MAXPHASE, MAXPHASE);





 secs = (long)(__ktime_get_real_seconds() - time_reftime);
 if (unlikely(time_status & STA_FREQHOLD))
  secs = 0;

 time_reftime = __ktime_get_real_seconds();

 offset64 = offset;
 freq_adj = ntp_update_offset_fll(offset64, secs);






 if (unlikely(secs > 1 << (SHIFT_PLL + 1 + time_constant)))
  secs = 1 << (SHIFT_PLL + 1 + time_constant);

 freq_adj += (offset64 * secs) <<
   (NTP_SCALE_SHIFT - 2 * (SHIFT_PLL + 2 + time_constant));

 freq_adj = min(freq_adj + time_freq, MAXFREQ_SCALED);

 time_freq = max(freq_adj, -MAXFREQ_SCALED);

 time_offset = div_s64(offset64 << NTP_SCALE_SHIFT, NTP_INTERVAL_FREQ);
}
