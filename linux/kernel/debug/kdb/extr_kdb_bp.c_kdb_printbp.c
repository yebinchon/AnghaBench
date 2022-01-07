
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bp_installed; int bp_type; int bp_addr; scalar_t__ bp_enabled; } ;
typedef TYPE_1__ kdb_bp_t ;


 int KDB_SP_DEFAULT ;
 int kdb_bptype (TYPE_1__*) ;
 int kdb_printf (char*,...) ;
 int kdb_symbol_print (int ,int *,int ) ;

__attribute__((used)) static void kdb_printbp(kdb_bp_t *bp, int i)
{
 kdb_printf("%s ", kdb_bptype(bp));
 kdb_printf("BP #%d at ", i);
 kdb_symbol_print(bp->bp_addr, ((void*)0), KDB_SP_DEFAULT);

 if (bp->bp_enabled)
  kdb_printf("\n    is enabled ");
 else
  kdb_printf("\n    is disabled");

 kdb_printf("  addr at %016lx, hardtype=%d installed=%d\n",
     bp->bp_addr, bp->bp_type, bp->bp_installed);

 kdb_printf("\n");
}
