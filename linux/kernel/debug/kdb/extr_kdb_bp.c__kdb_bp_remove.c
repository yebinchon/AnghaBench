
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bp_installed; int bp_type; int bph_length; int bp_addr; } ;
typedef TYPE_1__ kdb_bp_t ;
struct TYPE_5__ {int (* remove_hw_breakpoint ) (int ,int ,int ) ;} ;


 TYPE_2__ arch_kgdb_ops ;
 int dbg_remove_sw_break (int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int _kdb_bp_remove(kdb_bp_t *bp)
{
 int ret = 1;
 if (!bp->bp_installed)
  return ret;
 if (!bp->bp_type)
  ret = dbg_remove_sw_break(bp->bp_addr);
 else
  ret = arch_kgdb_ops.remove_hw_breakpoint(bp->bp_addr,
    bp->bph_length,
    bp->bp_type);
 if (ret == 0)
  bp->bp_installed = 0;
 return ret;
}
