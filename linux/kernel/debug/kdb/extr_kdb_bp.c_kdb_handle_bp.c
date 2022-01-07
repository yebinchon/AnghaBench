
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {int bp_delayed; scalar_t__ bp_delay; } ;
typedef TYPE_1__ kdb_bp_t ;


 int BP ;
 scalar_t__ KDB_DEBUG (int ) ;
 int instruction_pointer (struct pt_regs*) ;
 int kdb_printf (char*,int ) ;
 int kdb_setsinglestep (struct pt_regs*) ;

__attribute__((used)) static void kdb_handle_bp(struct pt_regs *regs, kdb_bp_t *bp)
{
 if (KDB_DEBUG(BP))
  kdb_printf("regs->ip = 0x%lx\n", instruction_pointer(regs));




 kdb_setsinglestep(regs);




 bp->bp_delay = 0;
 bp->bp_delayed = 1;
}
