
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw {int * irq_callback; } ;
struct ct_timer {TYPE_2__* ops; TYPE_1__* atc; } ;
struct TYPE_4__ {int (* free_global ) (struct ct_timer*) ;} ;
struct TYPE_3__ {struct hw* hw; } ;


 int kfree (struct ct_timer*) ;
 int stub1 (struct ct_timer*) ;

void ct_timer_free(struct ct_timer *atimer)
{
 struct hw *hw = atimer->atc->hw;
 hw->irq_callback = ((void*)0);
 if (atimer->ops->free_global)
  atimer->ops->free_global(atimer);
 kfree(atimer);
}
