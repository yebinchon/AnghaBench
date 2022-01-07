
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_count; } ;
struct nfs4_delegation {int dl_recall; TYPE_1__ dl_stid; } ;


 int nfsd4_run_cb (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static void nfsd_break_one_deleg(struct nfs4_delegation *dp)
{







 refcount_inc(&dp->dl_stid.sc_count);
 nfsd4_run_cb(&dp->dl_recall);
}
