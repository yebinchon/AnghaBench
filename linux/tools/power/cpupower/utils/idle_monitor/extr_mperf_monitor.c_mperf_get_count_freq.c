
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 unsigned int AVG_FREQ ;
 scalar_t__ MAX_FREQ_TSC_REF ;
 unsigned long long* aperf_current_count ;
 unsigned long long* aperf_previous_count ;
 int dprint (char*,unsigned long long,...) ;
 int * is_valid ;
 scalar_t__ max_freq_mode ;
 double max_frequency ;
 TYPE_1__* mperf_cstates ;
 unsigned long long* mperf_current_count ;
 unsigned long long* mperf_previous_count ;
 int time_end ;
 int time_start ;
 unsigned long long timespec_diff_us (int ,int ) ;
 unsigned long long tsc_at_measure_end ;
 unsigned long long tsc_at_measure_start ;

__attribute__((used)) static int mperf_get_count_freq(unsigned int id, unsigned long long *count,
    unsigned int cpu)
{
 unsigned long long aperf_diff, mperf_diff, time_diff, tsc_diff;

 if (id != AVG_FREQ)
  return 1;

 if (!is_valid[cpu])
  return -1;

 mperf_diff = mperf_current_count[cpu] - mperf_previous_count[cpu];
 aperf_diff = aperf_current_count[cpu] - aperf_previous_count[cpu];

 if (max_freq_mode == MAX_FREQ_TSC_REF) {

  tsc_diff = tsc_at_measure_end - tsc_at_measure_start;
  time_diff = timespec_diff_us(time_start, time_end);
  max_frequency = tsc_diff / time_diff;
 }

 *count = max_frequency * ((double)aperf_diff / mperf_diff);
 dprint("%s: Average freq based on %s maximum frequency:\n",
        mperf_cstates[id].name,
        (max_freq_mode == MAX_FREQ_TSC_REF) ? "TSC calculated" : "sysfs read");
 dprint("max_frequency: %lu\n", max_frequency);
 dprint("aperf_diff: %llu\n", aperf_diff);
 dprint("mperf_diff: %llu\n", mperf_diff);
 dprint("avg freq:   %llu\n", *count);
 return 0;
}
