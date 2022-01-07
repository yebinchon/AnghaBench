
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int __clocksource_change_rating (struct clocksource*,int) ;
 int clocksource_mutex ;
 int clocksource_select () ;
 int clocksource_select_watchdog (int) ;
 int clocksource_suspend_select (int) ;
 int clocksource_watchdog_lock (unsigned long*) ;
 int clocksource_watchdog_unlock (unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clocksource_change_rating(struct clocksource *cs, int rating)
{
 unsigned long flags;

 mutex_lock(&clocksource_mutex);
 clocksource_watchdog_lock(&flags);
 __clocksource_change_rating(cs, rating);
 clocksource_watchdog_unlock(&flags);

 clocksource_select();
 clocksource_select_watchdog(0);
 clocksource_suspend_select(0);
 mutex_unlock(&clocksource_mutex);
}
