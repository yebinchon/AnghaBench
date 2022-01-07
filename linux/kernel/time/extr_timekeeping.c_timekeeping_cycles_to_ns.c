
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tk_read_base {int mask; int cycle_last; } ;


 int clocksource_delta (int ,int ,int ) ;
 int timekeeping_delta_to_ns (struct tk_read_base const*,int ) ;

__attribute__((used)) static inline u64 timekeeping_cycles_to_ns(const struct tk_read_base *tkr, u64 cycles)
{
 u64 delta;


 delta = clocksource_delta(cycles, tkr->cycle_last, tkr->mask);
 return timekeeping_delta_to_ns(tkr, delta);
}
