
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer_instance {int timer; } ;


 int ct_systimer_stop (struct ct_timer_instance*) ;
 int try_to_del_timer_sync (int *) ;

__attribute__((used)) static void ct_systimer_prepare(struct ct_timer_instance *ti)
{
 ct_systimer_stop(ti);
 try_to_del_timer_sync(&ti->timer);
}
