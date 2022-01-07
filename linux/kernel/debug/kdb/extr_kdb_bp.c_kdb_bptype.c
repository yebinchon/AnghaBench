
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bp_type; } ;
typedef TYPE_1__ kdb_bp_t ;


 char** kdb_rwtypes ;

__attribute__((used)) static char *kdb_bptype(kdb_bp_t *bp)
{
 if (bp->bp_type < 0 || bp->bp_type > 4)
  return "";

 return kdb_rwtypes[bp->bp_type];
}
