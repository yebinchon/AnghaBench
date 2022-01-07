
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int registered; int persistent; int lock; } ;


 int BUG_ON (int) ;
 int __rfkill_set_sw_state (struct rfkill*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rfkill_init_sw_state(struct rfkill *rfkill, bool blocked)
{
 unsigned long flags;

 BUG_ON(!rfkill);
 BUG_ON(rfkill->registered);

 spin_lock_irqsave(&rfkill->lock, flags);
 __rfkill_set_sw_state(rfkill, blocked);
 rfkill->persistent = 1;
 spin_unlock_irqrestore(&rfkill->lock, flags);
}
