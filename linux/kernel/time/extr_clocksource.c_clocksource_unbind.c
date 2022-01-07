
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int list; } ;


 int EBUSY ;
 int clocksource_dequeue_watchdog (struct clocksource*) ;
 scalar_t__ clocksource_is_suspend (struct clocksource*) ;
 scalar_t__ clocksource_is_watchdog (struct clocksource*) ;
 int clocksource_select_fallback () ;
 int clocksource_select_watchdog (int) ;
 int clocksource_suspend_select (int) ;
 int clocksource_watchdog_lock (unsigned long*) ;
 int clocksource_watchdog_unlock (unsigned long*) ;
 struct clocksource* curr_clocksource ;
 int list_del_init (int *) ;

__attribute__((used)) static int clocksource_unbind(struct clocksource *cs)
{
 unsigned long flags;

 if (clocksource_is_watchdog(cs)) {

  clocksource_select_watchdog(1);
  if (clocksource_is_watchdog(cs))
   return -EBUSY;
 }

 if (cs == curr_clocksource) {

  clocksource_select_fallback();
  if (curr_clocksource == cs)
   return -EBUSY;
 }

 if (clocksource_is_suspend(cs)) {





  clocksource_suspend_select(1);
 }

 clocksource_watchdog_lock(&flags);
 clocksource_dequeue_watchdog(cs);
 list_del_init(&cs->list);
 clocksource_watchdog_unlock(&flags);

 return 0;
}
