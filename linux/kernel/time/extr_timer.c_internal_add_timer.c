
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct timer_base {int dummy; } ;


 int __internal_add_timer (struct timer_base*,struct timer_list*) ;
 int trigger_dyntick_cpu (struct timer_base*,struct timer_list*) ;

__attribute__((used)) static void
internal_add_timer(struct timer_base *base, struct timer_list *timer)
{
 __internal_add_timer(base, timer);
 trigger_dyntick_cpu(base, timer);
}
