
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;


 int hrtimer_cancel_wait_running (struct hrtimer*) ;
 int hrtimer_try_to_cancel (struct hrtimer*) ;

int hrtimer_cancel(struct hrtimer *timer)
{
 int ret;

 do {
  ret = hrtimer_try_to_cancel(timer);

  if (ret < 0)
   hrtimer_cancel_wait_running(timer);
 } while (ret < 0);
 return ret;
}
