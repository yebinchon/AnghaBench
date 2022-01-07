
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* read ) (TYPE_1__*) ;int (* disable ) (TYPE_1__*) ;int shift; int mult; int mask; } ;


 scalar_t__ clocksource_delta (scalar_t__,scalar_t__,int ) ;
 scalar_t__ clocksource_is_suspend (struct clocksource*) ;
 scalar_t__ mul_u64_u32_shr (scalar_t__,int ,int ) ;
 scalar_t__ stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 TYPE_1__* suspend_clocksource ;
 scalar_t__ suspend_start ;

u64 clocksource_stop_suspend_timing(struct clocksource *cs, u64 cycle_now)
{
 u64 now, delta, nsec = 0;

 if (!suspend_clocksource)
  return 0;






 if (clocksource_is_suspend(cs))
  now = cycle_now;
 else
  now = suspend_clocksource->read(suspend_clocksource);

 if (now > suspend_start) {
  delta = clocksource_delta(now, suspend_start,
       suspend_clocksource->mask);
  nsec = mul_u64_u32_shr(delta, suspend_clocksource->mult,
           suspend_clocksource->shift);
 }





 if (!clocksource_is_suspend(cs) && suspend_clocksource->disable)
  suspend_clocksource->disable(suspend_clocksource);

 return nsec;
}
