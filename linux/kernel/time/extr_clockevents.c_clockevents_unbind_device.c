
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int clockevents_mutex ;
 int clockevents_unbind (struct clock_event_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int clockevents_unbind_device(struct clock_event_device *ced, int cpu)
{
 int ret;

 mutex_lock(&clockevents_mutex);
 ret = clockevents_unbind(ced, cpu);
 mutex_unlock(&clockevents_mutex);
 return ret;
}
