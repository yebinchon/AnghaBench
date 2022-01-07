
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tk_read_base {int mask; int cycle_last; } ;


 int clocksource_delta (int ,int ,int ) ;
 int tk_clock_read (struct tk_read_base const*) ;

__attribute__((used)) static inline u64 timekeeping_get_delta(const struct tk_read_base *tkr)
{
 u64 cycle_now, delta;


 cycle_now = tk_clock_read(tkr);


 delta = clocksource_delta(cycle_now, tkr->cycle_last, tkr->mask);

 return delta;
}
