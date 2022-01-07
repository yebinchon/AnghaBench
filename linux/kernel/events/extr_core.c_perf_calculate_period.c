
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sample_freq; } ;
struct perf_event {TYPE_1__ attr; } ;


 int NSEC_PER_SEC ;
 int REDUCE_FLS (int,int) ;
 int div64_u64 (int,int) ;
 int fls64 (int) ;

__attribute__((used)) static u64 perf_calculate_period(struct perf_event *event, u64 nsec, u64 count)
{
 u64 frequency = event->attr.sample_freq;
 u64 sec = NSEC_PER_SEC;
 u64 divisor, dividend;

 int count_fls, nsec_fls, frequency_fls, sec_fls;

 count_fls = fls64(count);
 nsec_fls = fls64(nsec);
 frequency_fls = fls64(frequency);
 sec_fls = 30;
 while (count_fls + sec_fls > 64 && nsec_fls + frequency_fls > 64) {
  do { if (nsec_fls > frequency_fls) { nsec >>= 1; nsec_fls--; } else { frequency >>= 1; frequency_fls--; } } while (0);
  do { if (sec_fls > count_fls) { sec >>= 1; sec_fls--; } else { count >>= 1; count_fls--; } } while (0);
 }

 if (count_fls + sec_fls > 64) {
  divisor = nsec * frequency;

  while (count_fls + sec_fls > 64) {
   do { if (count_fls > sec_fls) { count >>= 1; count_fls--; } else { sec >>= 1; sec_fls--; } } while (0);
   divisor >>= 1;
  }

  dividend = count * sec;
 } else {
  dividend = count * sec;

  while (nsec_fls + frequency_fls > 64) {
   do { if (nsec_fls > frequency_fls) { nsec >>= 1; nsec_fls--; } else { frequency >>= 1; frequency_fls--; } } while (0);
   dividend >>= 1;
  }

  divisor = nsec * frequency;
 }

 if (!divisor)
  return dividend;

 return div64_u64(dividend, divisor);
}
