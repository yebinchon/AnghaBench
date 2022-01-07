
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sc_file; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;


 int clear_deny (int,struct nfs4_ol_stateid*) ;
 int recalculate_deny_mode (int ) ;

__attribute__((used)) static void
reset_union_bmap_deny(u32 deny, struct nfs4_ol_stateid *stp)
{
 int i;
 bool change = 0;

 for (i = 1; i < 4; i++) {
  if ((i & deny) != i) {
   change = 1;
   clear_deny(i, stp);
  }
 }


 if (change)
  recalculate_deny_mode(stp->st_stid.sc_file);
}
