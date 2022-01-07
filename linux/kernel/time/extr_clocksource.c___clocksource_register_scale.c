
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clocksource {int dummy; } ;


 int __clocksource_suspend_select (struct clocksource*) ;
 int __clocksource_update_freq_scale (struct clocksource*,int ,int ) ;
 int clocksource_arch_init (struct clocksource*) ;
 int clocksource_enqueue (struct clocksource*) ;
 int clocksource_enqueue_watchdog (struct clocksource*) ;
 int clocksource_mutex ;
 int clocksource_select () ;
 int clocksource_select_watchdog (int) ;
 int clocksource_watchdog_lock (unsigned long*) ;
 int clocksource_watchdog_unlock (unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __clocksource_register_scale(struct clocksource *cs, u32 scale, u32 freq)
{
 unsigned long flags;

 clocksource_arch_init(cs);


 __clocksource_update_freq_scale(cs, scale, freq);


 mutex_lock(&clocksource_mutex);

 clocksource_watchdog_lock(&flags);
 clocksource_enqueue(cs);
 clocksource_enqueue_watchdog(cs);
 clocksource_watchdog_unlock(&flags);

 clocksource_select();
 clocksource_select_watchdog(0);
 __clocksource_suspend_select(cs);
 mutex_unlock(&clocksource_mutex);
 return 0;
}
