
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
 char* dbg_get_reg (int,int *,int ) ;
 TYPE_1__* dbg_reg_def ;
 int kdb_check_regs () ;
 int kdb_current_regs ;
 int kdb_dumpregs (int ) ;
 scalar_t__ kdb_printf (char*,...) ;
 int strlen (int ) ;

__attribute__((used)) static int kdb_rd(int argc, const char **argv)
{
 int len = kdb_check_regs();
 if (len)
  return len;

 kdb_dumpregs(kdb_current_regs);

 return 0;
}
