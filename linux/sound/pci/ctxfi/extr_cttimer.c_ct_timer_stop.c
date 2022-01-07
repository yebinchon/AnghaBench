
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_timer_instance {struct ct_timer* timer_base; } ;
struct ct_timer {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop ) (struct ct_timer_instance*) ;} ;


 int stub1 (struct ct_timer_instance*) ;

void ct_timer_stop(struct ct_timer_instance *ti)
{
 struct ct_timer *atimer = ti->timer_base;
 atimer->ops->stop(ti);
}
