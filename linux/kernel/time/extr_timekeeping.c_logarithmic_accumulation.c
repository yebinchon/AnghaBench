
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ xtime_nsec; scalar_t__ shift; int cycle_last; } ;
struct TYPE_3__ {scalar_t__ xtime_nsec; int cycle_last; } ;
struct timekeeper {scalar_t__ cycle_interval; scalar_t__ xtime_interval; scalar_t__ raw_interval; scalar_t__ ntp_error; scalar_t__ ntp_tick; scalar_t__ xtime_remainder; scalar_t__ ntp_error_shift; int raw_sec; TYPE_2__ tkr_raw; TYPE_1__ tkr_mono; } ;


 scalar_t__ NSEC_PER_SEC ;
 unsigned int accumulate_nsecs_to_secs (struct timekeeper*) ;

__attribute__((used)) static u64 logarithmic_accumulation(struct timekeeper *tk, u64 offset,
        u32 shift, unsigned int *clock_set)
{
 u64 interval = tk->cycle_interval << shift;
 u64 snsec_per_sec;


 if (offset < interval)
  return offset;


 offset -= interval;
 tk->tkr_mono.cycle_last += interval;
 tk->tkr_raw.cycle_last += interval;

 tk->tkr_mono.xtime_nsec += tk->xtime_interval << shift;
 *clock_set |= accumulate_nsecs_to_secs(tk);


 tk->tkr_raw.xtime_nsec += tk->raw_interval << shift;
 snsec_per_sec = (u64)NSEC_PER_SEC << tk->tkr_raw.shift;
 while (tk->tkr_raw.xtime_nsec >= snsec_per_sec) {
  tk->tkr_raw.xtime_nsec -= snsec_per_sec;
  tk->raw_sec++;
 }


 tk->ntp_error += tk->ntp_tick << shift;
 tk->ntp_error -= (tk->xtime_interval + tk->xtime_remainder) <<
      (tk->ntp_error_shift + shift);

 return offset;
}
