
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_count; int sc_type; struct nfs4_client* sc_client; } ;
struct nfs4_delegation {int dl_recall_lru; TYPE_1__ dl_stid; } ;
struct nfs4_client {int cl_lock; int cl_revoked; scalar_t__ cl_minorversion; } ;


 int NFS4_REVOKED_DELEG_STID ;
 int WARN_ON (int) ;
 int destroy_unhashed_deleg (struct nfs4_delegation*) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void revoke_delegation(struct nfs4_delegation *dp)
{
 struct nfs4_client *clp = dp->dl_stid.sc_client;

 WARN_ON(!list_empty(&dp->dl_recall_lru));

 if (clp->cl_minorversion) {
  dp->dl_stid.sc_type = NFS4_REVOKED_DELEG_STID;
  refcount_inc(&dp->dl_stid.sc_count);
  spin_lock(&clp->cl_lock);
  list_add(&dp->dl_recall_lru, &clp->cl_revoked);
  spin_unlock(&clp->cl_lock);
 }
 destroy_unhashed_deleg(dp);
}
