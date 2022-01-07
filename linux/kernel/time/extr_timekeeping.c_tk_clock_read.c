
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tk_read_base {int clock; } ;
struct clocksource {int (* read ) (struct clocksource*) ;} ;


 struct clocksource* READ_ONCE (int ) ;
 int stub1 (struct clocksource*) ;

__attribute__((used)) static inline u64 tk_clock_read(const struct tk_read_base *tkr)
{
 struct clocksource *clock = READ_ONCE(tkr->clock);

 return clock->read(clock);
}
