
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int state; int uevent_work; int registered; int lock; } ;


 int BUG_ON (int) ;
 int RFKILL_BLOCK_HW ;
 int RFKILL_BLOCK_SW ;
 int __rfkill_set_sw_state (struct rfkill*,int) ;
 int rfkill_global_led_trigger_event () ;
 int rfkill_led_trigger_event (struct rfkill*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool rfkill_set_sw_state(struct rfkill *rfkill, bool blocked)
{
 unsigned long flags;
 bool prev, hwblock;

 BUG_ON(!rfkill);

 spin_lock_irqsave(&rfkill->lock, flags);
 prev = !!(rfkill->state & RFKILL_BLOCK_SW);
 __rfkill_set_sw_state(rfkill, blocked);
 hwblock = !!(rfkill->state & RFKILL_BLOCK_HW);
 blocked = blocked || hwblock;
 spin_unlock_irqrestore(&rfkill->lock, flags);

 if (!rfkill->registered)
  return blocked;

 if (prev != blocked && !hwblock)
  schedule_work(&rfkill->uevent_work);

 rfkill_led_trigger_event(rfkill);
 rfkill_global_led_trigger_event();

 return blocked;
}
