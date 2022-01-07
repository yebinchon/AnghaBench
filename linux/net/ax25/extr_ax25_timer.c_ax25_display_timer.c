
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {unsigned long expires; } ;


 unsigned long jiffies ;
 int timer_pending (struct timer_list*) ;

unsigned long ax25_display_timer(struct timer_list *timer)
{
 if (!timer_pending(timer))
  return 0;

 return timer->expires - jiffies;
}
