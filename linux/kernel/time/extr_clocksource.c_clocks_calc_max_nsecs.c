
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int ULLONG_MAX ;
 int clocksource_cyc2ns (int,scalar_t__,scalar_t__) ;
 int do_div (int,scalar_t__) ;
 int min (int,int) ;

u64 clocks_calc_max_nsecs(u32 mult, u32 shift, u32 maxadj, u64 mask, u64 *max_cyc)
{
 u64 max_nsecs, max_cycles;





 max_cycles = ULLONG_MAX;
 do_div(max_cycles, mult+maxadj);







 max_cycles = min(max_cycles, mask);
 max_nsecs = clocksource_cyc2ns(max_cycles, mult - maxadj, shift);


 if (max_cyc)
  *max_cyc = max_cycles;


 max_nsecs >>= 1;

 return max_nsecs;
}
