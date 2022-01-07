
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int __mod_timer (struct timer_list*,unsigned long,int ) ;

int mod_timer(struct timer_list *timer, unsigned long expires)
{
 return __mod_timer(timer, expires, 0);
}
