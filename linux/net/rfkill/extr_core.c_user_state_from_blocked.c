
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long RFKILL_BLOCK_HW ;
 unsigned long RFKILL_BLOCK_SW ;
 int RFKILL_USER_STATE_HARD_BLOCKED ;
 int RFKILL_USER_STATE_SOFT_BLOCKED ;
 int RFKILL_USER_STATE_UNBLOCKED ;

__attribute__((used)) static u8 user_state_from_blocked(unsigned long state)
{
 if (state & RFKILL_BLOCK_HW)
  return RFKILL_USER_STATE_HARD_BLOCKED;
 if (state & RFKILL_BLOCK_SW)
  return RFKILL_USER_STATE_SOFT_BLOCKED;

 return RFKILL_USER_STATE_UNBLOCKED;
}
