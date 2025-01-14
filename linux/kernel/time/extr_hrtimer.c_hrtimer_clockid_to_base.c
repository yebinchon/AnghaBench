
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t clockid_t ;


 int HRTIMER_BASE_MONOTONIC ;
 int HRTIMER_MAX_CLOCK_BASES ;
 size_t MAX_CLOCKS ;
 int WARN (int,char*,size_t) ;
 int* hrtimer_clock_to_base_table ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int hrtimer_clockid_to_base(clockid_t clock_id)
{
 if (likely(clock_id < MAX_CLOCKS)) {
  int base = hrtimer_clock_to_base_table[clock_id];

  if (likely(base != HRTIMER_MAX_CLOCK_BASES))
   return base;
 }
 WARN(1, "Invalid clockid %d. Using MONOTONIC\n", clock_id);
 return HRTIMER_BASE_MONOTONIC;
}
