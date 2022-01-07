
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {TYPE_1__ power_state; } ;
struct TYPE_7__ {TYPE_2__ power; } ;
struct rfkill {int state; int lock; int data; TYPE_4__* ops; TYPE_3__ dev; } ;
struct TYPE_8__ {int (* set_block ) (int ,int) ;int (* query ) (struct rfkill*,int ) ;} ;


 int PM_EVENT_SLEEP ;
 int RFKILL_BLOCK_SW ;
 int RFKILL_BLOCK_SW_PREV ;
 int RFKILL_BLOCK_SW_SETCALL ;
 int rfkill_event (struct rfkill*) ;
 int rfkill_global_led_trigger_event () ;
 int rfkill_led_trigger_event (struct rfkill*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rfkill*,int ) ;
 int stub2 (int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rfkill_set_block(struct rfkill *rfkill, bool blocked)
{
 unsigned long flags;
 bool prev, curr;
 int err;

 if (unlikely(rfkill->dev.power.power_state.event & PM_EVENT_SLEEP))
  return;






 if (rfkill->ops->query)
  rfkill->ops->query(rfkill, rfkill->data);

 spin_lock_irqsave(&rfkill->lock, flags);
 prev = rfkill->state & RFKILL_BLOCK_SW;

 if (prev)
  rfkill->state |= RFKILL_BLOCK_SW_PREV;
 else
  rfkill->state &= ~RFKILL_BLOCK_SW_PREV;

 if (blocked)
  rfkill->state |= RFKILL_BLOCK_SW;
 else
  rfkill->state &= ~RFKILL_BLOCK_SW;

 rfkill->state |= RFKILL_BLOCK_SW_SETCALL;
 spin_unlock_irqrestore(&rfkill->lock, flags);

 err = rfkill->ops->set_block(rfkill->data, blocked);

 spin_lock_irqsave(&rfkill->lock, flags);
 if (err) {





  if (rfkill->state & RFKILL_BLOCK_SW_PREV)
   rfkill->state |= RFKILL_BLOCK_SW;
  else
   rfkill->state &= ~RFKILL_BLOCK_SW;
 }
 rfkill->state &= ~RFKILL_BLOCK_SW_SETCALL;
 rfkill->state &= ~RFKILL_BLOCK_SW_PREV;
 curr = rfkill->state & RFKILL_BLOCK_SW;
 spin_unlock_irqrestore(&rfkill->lock, flags);

 rfkill_led_trigger_event(rfkill);
 rfkill_global_led_trigger_event();

 if (prev != curr)
  rfkill_event(rfkill);
}
