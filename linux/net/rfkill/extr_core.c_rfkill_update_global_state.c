
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
struct TYPE_2__ {int cur; } ;


 int NUM_RFKILL_TYPES ;
 int RFKILL_TYPE_ALL ;
 TYPE_1__* rfkill_global_states ;

__attribute__((used)) static void rfkill_update_global_state(enum rfkill_type type, bool blocked)
{
 int i;

 if (type != RFKILL_TYPE_ALL) {
  rfkill_global_states[type].cur = blocked;
  return;
 }

 for (i = 0; i < NUM_RFKILL_TYPES; i++)
  rfkill_global_states[i].cur = blocked;
}
