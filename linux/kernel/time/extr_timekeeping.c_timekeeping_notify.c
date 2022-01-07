
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct clocksource* clock; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {struct timekeeper timekeeper; } ;


 int change_clocksource ;
 int stop_machine (int ,struct clocksource*,int *) ;
 int tick_clock_notify () ;
 TYPE_2__ tk_core ;

int timekeeping_notify(struct clocksource *clock)
{
 struct timekeeper *tk = &tk_core.timekeeper;

 if (tk->tkr_mono.clock == clock)
  return 0;
 stop_machine(change_clocksource, clock, ((void*)0));
 tick_clock_notify();
 return tk->tkr_mono.clock == clock ? 0 : -1;
}
