
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int size; int name; } ;


 int DBG_MAX_REG_NUM ;
 int KDB_ARGCOUNT ;
 int KDB_BADREG ;
 TYPE_1__* dbg_reg_def ;
 int dbg_set_reg (int,int *,int ) ;
 int kdb_check_regs () ;
 int kdb_current_regs ;
 int kdb_printf (char*) ;
 int kdbgetu64arg (char const*,int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int kdb_rm(int argc, const char **argv)
{
 kdb_printf("ERROR: Register set currently not implemented\n");
    return 0;

}
