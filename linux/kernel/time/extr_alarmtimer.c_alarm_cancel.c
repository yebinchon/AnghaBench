
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alarm {int timer; } ;


 int alarm_try_to_cancel (struct alarm*) ;
 int hrtimer_cancel_wait_running (int *) ;

int alarm_cancel(struct alarm *alarm)
{
 for (;;) {
  int ret = alarm_try_to_cancel(alarm);
  if (ret >= 0)
   return ret;
  hrtimer_cancel_wait_running(&alarm->timer);
 }
}
