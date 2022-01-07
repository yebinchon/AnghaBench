
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rfkill {int state; } ;


 int RFKILL_BLOCK_SW ;
 int RFKILL_BLOCK_SW_PREV ;
 int RFKILL_BLOCK_SW_SETCALL ;

__attribute__((used)) static void __rfkill_set_sw_state(struct rfkill *rfkill, bool blocked)
{
 u32 bit = RFKILL_BLOCK_SW;


 if (rfkill->state & RFKILL_BLOCK_SW_SETCALL)
  bit = RFKILL_BLOCK_SW_PREV;

 if (blocked)
  rfkill->state |= bit;
 else
  rfkill->state &= ~bit;
}
