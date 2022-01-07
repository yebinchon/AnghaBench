
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int irq_callback; struct ct_timer* irq_callback_data; scalar_t__ set_timer_irq; } ;
struct ct_timer {int * ops; struct ct_atc* atc; int running_head; int instance_head; int list_lock; int lock; } ;
struct ct_atc {TYPE_1__* card; struct hw* hw; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ct_systimer_ops ;
 int ct_timer_interrupt ;
 int ct_xfitimer_ops ;
 int dev_info (int ,char*) ;
 struct ct_timer* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int use_system_timer ;

struct ct_timer *ct_timer_new(struct ct_atc *atc)
{
 struct ct_timer *atimer;
 struct hw *hw;

 atimer = kzalloc(sizeof(*atimer), GFP_KERNEL);
 if (!atimer)
  return ((void*)0);
 spin_lock_init(&atimer->lock);
 spin_lock_init(&atimer->list_lock);
 INIT_LIST_HEAD(&atimer->instance_head);
 INIT_LIST_HEAD(&atimer->running_head);
 atimer->atc = atc;
 hw = atc->hw;
 if (!use_system_timer && hw->set_timer_irq) {
  dev_info(atc->card->dev, "Use xfi-native timer\n");
  atimer->ops = &ct_xfitimer_ops;
  hw->irq_callback_data = atimer;
  hw->irq_callback = ct_timer_interrupt;
 } else {
  dev_info(atc->card->dev, "Use system timer\n");
  atimer->ops = &ct_systimer_ops;
 }
 return atimer;
}
