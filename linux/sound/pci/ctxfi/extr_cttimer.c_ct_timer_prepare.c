
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ct_timer_instance {scalar_t__ running; scalar_t__ position; TYPE_2__* timer_base; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* prepare ) (struct ct_timer_instance*) ;} ;


 int stub1 (struct ct_timer_instance*) ;

void ct_timer_prepare(struct ct_timer_instance *ti)
{
 if (ti->timer_base->ops->prepare)
  ti->timer_base->ops->prepare(ti);
 ti->position = 0;
 ti->running = 0;
}
