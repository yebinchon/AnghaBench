
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int expires; } ;


 int BUG_ON (int ) ;
 int mod_timer (struct timer_list*,int ) ;
 int timer_pending (struct timer_list*) ;

void add_timer(struct timer_list *timer)
{
 BUG_ON(timer_pending(timer));
 mod_timer(timer, timer->expires);
}
