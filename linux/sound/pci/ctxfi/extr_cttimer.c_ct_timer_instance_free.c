
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_timer_instance {int instance_list; struct ct_timer* timer_base; } ;
struct ct_timer {int list_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free_instance ) (struct ct_timer_instance*) ;int (* stop ) (struct ct_timer_instance*) ;} ;


 int kfree (struct ct_timer_instance*) ;
 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct ct_timer_instance*) ;
 int stub2 (struct ct_timer_instance*) ;

void ct_timer_instance_free(struct ct_timer_instance *ti)
{
 struct ct_timer *atimer = ti->timer_base;

 atimer->ops->stop(ti);
 if (atimer->ops->free_instance)
  atimer->ops->free_instance(ti);

 spin_lock_irq(&atimer->list_lock);
 list_del(&ti->instance_list);
 spin_unlock_irq(&atimer->list_lock);

 kfree(ti);
}
