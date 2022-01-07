
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int state; int persistent; int uevent_work; int registered; int lock; } ;


 int BUG_ON (int) ;
 int RFKILL_BLOCK_HW ;
 int RFKILL_BLOCK_SW ;
 int __rfkill_set_sw_state (struct rfkill*,int) ;
 int rfkill_global_led_trigger_event () ;
 int rfkill_led_trigger_event (struct rfkill*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rfkill_set_states(struct rfkill *rfkill, bool sw, bool hw)
{
 unsigned long flags;
 bool swprev, hwprev;

 BUG_ON(!rfkill);

 spin_lock_irqsave(&rfkill->lock, flags);





 swprev = !!(rfkill->state & RFKILL_BLOCK_SW);
 hwprev = !!(rfkill->state & RFKILL_BLOCK_HW);
 __rfkill_set_sw_state(rfkill, sw);
 if (hw)
  rfkill->state |= RFKILL_BLOCK_HW;
 else
  rfkill->state &= ~RFKILL_BLOCK_HW;

 spin_unlock_irqrestore(&rfkill->lock, flags);

 if (!rfkill->registered) {
  rfkill->persistent = 1;
 } else {
  if (swprev != sw || hwprev != hw)
   schedule_work(&rfkill->uevent_work);

  rfkill_led_trigger_event(rfkill);
  rfkill_global_led_trigger_event();
 }
}
