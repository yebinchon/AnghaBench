
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int list; } ;


 int clocksource_mutex ;
 int clocksource_unbind (struct clocksource*) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int clocksource_unregister(struct clocksource *cs)
{
 int ret = 0;

 mutex_lock(&clocksource_mutex);
 if (!list_empty(&cs->list))
  ret = clocksource_unbind(cs);
 mutex_unlock(&clocksource_mutex);
 return ret;
}
