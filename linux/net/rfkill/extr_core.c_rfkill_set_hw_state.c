
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int state; int uevent_work; scalar_t__ registered; int lock; } ;


 int BUG_ON (int) ;
 int RFKILL_BLOCK_ANY ;
 int RFKILL_BLOCK_HW ;
 int rfkill_global_led_trigger_event () ;
 int rfkill_led_trigger_event (struct rfkill*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool rfkill_set_hw_state(struct rfkill *rfkill, bool blocked)
{
 unsigned long flags;
 bool ret, prev;

 BUG_ON(!rfkill);

 spin_lock_irqsave(&rfkill->lock, flags);
 prev = !!(rfkill->state & RFKILL_BLOCK_HW);
 if (blocked)
  rfkill->state |= RFKILL_BLOCK_HW;
 else
  rfkill->state &= ~RFKILL_BLOCK_HW;
 ret = !!(rfkill->state & RFKILL_BLOCK_ANY);
 spin_unlock_irqrestore(&rfkill->lock, flags);

 rfkill_led_trigger_event(rfkill);
 rfkill_global_led_trigger_event();

 if (rfkill->registered && prev != blocked)
  schedule_work(&rfkill->uevent_work);

 return ret;
}
