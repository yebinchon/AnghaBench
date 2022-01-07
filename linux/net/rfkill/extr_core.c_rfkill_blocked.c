
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rfkill {int state; int lock; } ;


 int RFKILL_BLOCK_ANY ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool rfkill_blocked(struct rfkill *rfkill)
{
 unsigned long flags;
 u32 state;

 spin_lock_irqsave(&rfkill->lock, flags);
 state = rfkill->state;
 spin_unlock_irqrestore(&rfkill->lock, flags);

 return !!(state & RFKILL_BLOCK_ANY);
}
