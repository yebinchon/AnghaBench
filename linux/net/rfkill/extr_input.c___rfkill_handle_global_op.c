
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rfkill_sched_op { ____Placeholder_rfkill_sched_op } rfkill_sched_op ;


 unsigned int NUM_RFKILL_TYPES ;




 int WARN (int,char*,int) ;
 int rfkill_epo () ;
 int rfkill_remove_epo_lock () ;
 int rfkill_restore_states () ;
 int rfkill_switch_all (unsigned int,int) ;

__attribute__((used)) static void __rfkill_handle_global_op(enum rfkill_sched_op op)
{
 unsigned int i;

 switch (op) {
 case 131:
  rfkill_epo();
  break;
 case 130:
  rfkill_restore_states();
  break;
 case 128:
  rfkill_remove_epo_lock();
  break;
 case 129:
  rfkill_remove_epo_lock();
  for (i = 0; i < NUM_RFKILL_TYPES; i++)
   rfkill_switch_all(i, 0);
  break;
 default:

  rfkill_epo();
  WARN(1, "Unknown requested operation %d! "
   "rfkill Emergency Power Off activated\n",
   op);
 }
}
