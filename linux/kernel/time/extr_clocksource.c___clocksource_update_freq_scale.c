
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clocksource {int mask; int mult; int maxadj; int max_idle_ns; int max_cycles; int name; int shift; } ;


 int NSEC_PER_SEC ;
 scalar_t__ UINT_MAX ;
 int WARN_ONCE (int,char*,int ) ;
 int clocks_calc_mult_shift (int*,int *,int,int,int) ;
 void* clocksource_max_adjustment (struct clocksource*) ;
 int clocksource_update_max_deferment (struct clocksource*) ;
 int do_div (int,int) ;
 int pr_info (char*,int ,scalar_t__,int ,int ) ;

void __clocksource_update_freq_scale(struct clocksource *cs, u32 scale, u32 freq)
{
 u64 sec;





 if (freq) {
  sec = cs->mask;
  do_div(sec, freq);
  do_div(sec, scale);
  if (!sec)
   sec = 1;
  else if (sec > 600 && cs->mask > UINT_MAX)
   sec = 600;

  clocks_calc_mult_shift(&cs->mult, &cs->shift, freq,
           NSEC_PER_SEC / scale, sec * scale);
 }




 cs->maxadj = clocksource_max_adjustment(cs);
 while (freq && ((cs->mult + cs->maxadj < cs->mult)
  || (cs->mult - cs->maxadj > cs->mult))) {
  cs->mult >>= 1;
  cs->shift--;
  cs->maxadj = clocksource_max_adjustment(cs);
 }





 WARN_ONCE(cs->mult + cs->maxadj < cs->mult,
  "timekeeping: Clocksource %s might overflow on 11%% adjustment\n",
  cs->name);

 clocksource_update_max_deferment(cs);

 pr_info("%s: mask: 0x%llx max_cycles: 0x%llx, max_idle_ns: %lld ns\n",
  cs->name, cs->mask, cs->max_cycles, cs->max_idle_ns);
}
