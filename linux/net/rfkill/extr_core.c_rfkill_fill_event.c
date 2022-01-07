
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill_event {int op; int hard; int soft; int type; int idx; } ;
struct rfkill {int state; int lock; int type; int idx; } ;
typedef enum rfkill_operation { ____Placeholder_rfkill_operation } rfkill_operation ;


 int RFKILL_BLOCK_HW ;
 int RFKILL_BLOCK_SW ;
 int RFKILL_BLOCK_SW_PREV ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rfkill_fill_event(struct rfkill_event *ev, struct rfkill *rfkill,
         enum rfkill_operation op)
{
 unsigned long flags;

 ev->idx = rfkill->idx;
 ev->type = rfkill->type;
 ev->op = op;

 spin_lock_irqsave(&rfkill->lock, flags);
 ev->hard = !!(rfkill->state & RFKILL_BLOCK_HW);
 ev->soft = !!(rfkill->state & (RFKILL_BLOCK_SW |
     RFKILL_BLOCK_SW_PREV));
 spin_unlock_irqrestore(&rfkill->lock, flags);
}
