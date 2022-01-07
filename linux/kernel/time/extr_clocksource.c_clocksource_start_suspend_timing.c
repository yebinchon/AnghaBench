
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {int (* read ) (TYPE_1__*) ;scalar_t__ (* enable ) (TYPE_1__*) ;} ;


 scalar_t__ clocksource_is_suspend (struct clocksource*) ;
 int pr_warn_once (char*) ;
 scalar_t__ stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 TYPE_1__* suspend_clocksource ;
 int suspend_start ;

void clocksource_start_suspend_timing(struct clocksource *cs, u64 start_cycles)
{
 if (!suspend_clocksource)
  return;






 if (clocksource_is_suspend(cs)) {
  suspend_start = start_cycles;
  return;
 }

 if (suspend_clocksource->enable &&
     suspend_clocksource->enable(suspend_clocksource)) {
  pr_warn_once("Failed to enable the non-suspend-able clocksource.\n");
  return;
 }

 suspend_start = suspend_clocksource->read(suspend_clocksource);
}
