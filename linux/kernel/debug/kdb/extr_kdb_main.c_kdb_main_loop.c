
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int kdb_reason_t ;
typedef int kdb_dbtrap_t ;


 int DOING_KGDB ;
 int DOING_SS ;
 int HOLD_CPU ;
 int KDB ;
 int KDB_CMD_CPU ;
 int KDB_CMD_GO ;
 int KDB_CMD_KGDB ;
 int KDB_CMD_SS ;
 int KDB_DEBUG_STATE (char*,int) ;
 scalar_t__ KDB_STATE (int ) ;
 int KDB_STATE_CLEAR (int ) ;
 int KDB_STATE_SET (int ) ;
 int LEAVING ;
 int SSBPT ;
 int SUPPRESS ;
 int kdb_kbd_cleanup_state () ;
 int kdb_local (int,int,struct pt_regs*,int ) ;
 int kdb_printf (char*,...) ;

int kdb_main_loop(kdb_reason_t reason, kdb_reason_t reason2, int error,
       kdb_dbtrap_t db_result, struct pt_regs *regs)
{
 int result = 1;

 while (1) {




  KDB_DEBUG_STATE("kdb_main_loop 1", reason);
  while (KDB_STATE(HOLD_CPU)) {




   if (!KDB_STATE(KDB))
    KDB_STATE_SET(KDB);
  }

  KDB_STATE_CLEAR(SUPPRESS);
  KDB_DEBUG_STATE("kdb_main_loop 2", reason);
  if (KDB_STATE(LEAVING))
   break;

  result = kdb_local(reason2, error, regs, db_result);
  KDB_DEBUG_STATE("kdb_main_loop 3", result);

  if (result == KDB_CMD_CPU)
   break;

  if (result == KDB_CMD_SS) {
   KDB_STATE_SET(DOING_SS);
   break;
  }

  if (result == KDB_CMD_KGDB) {
   if (!KDB_STATE(DOING_KGDB))
    kdb_printf("Entering please attach debugger "
        "or use $D#44+ or $3#33\n");
   break;
  }
  if (result && result != 1 && result != KDB_CMD_GO)
   kdb_printf("\nUnexpected kdb_local return code %d\n",
       result);
  KDB_DEBUG_STATE("kdb_main_loop 4", reason);
  break;
 }
 if (KDB_STATE(DOING_SS))
  KDB_STATE_CLEAR(SSBPT);


 kdb_kbd_cleanup_state();

 return result;
}
