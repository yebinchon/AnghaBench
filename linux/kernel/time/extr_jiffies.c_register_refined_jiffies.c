
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {char* name; int mult; int rating; } ;


 int HZ ;
 int JIFFIES_SHIFT ;
 scalar_t__ NSEC_PER_SEC ;
 int __clocksource_register (TYPE_1__*) ;
 TYPE_1__ clocksource_jiffies ;
 int do_div (int,int) ;
 TYPE_1__ refined_jiffies ;

int register_refined_jiffies(long cycles_per_second)
{
 u64 nsec_per_tick, shift_hz;
 long cycles_per_tick;



 refined_jiffies = clocksource_jiffies;
 refined_jiffies.name = "refined-jiffies";
 refined_jiffies.rating++;


 cycles_per_tick = (cycles_per_second + HZ/2)/HZ;

 shift_hz = (u64)cycles_per_second << 8;
 shift_hz += cycles_per_tick/2;
 do_div(shift_hz, cycles_per_tick);

 nsec_per_tick = (u64)NSEC_PER_SEC << 8;
 nsec_per_tick += (u32)shift_hz/2;
 do_div(nsec_per_tick, (u32)shift_hz);

 refined_jiffies.mult = ((u32)nsec_per_tick) << JIFFIES_SHIFT;

 __clocksource_register(&refined_jiffies);
 return 0;
}
