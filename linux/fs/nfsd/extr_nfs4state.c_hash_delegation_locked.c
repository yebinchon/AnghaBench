
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_file {int fi_delegations; int fi_lock; } ;
struct TYPE_2__ {int sc_type; int sc_count; struct nfs4_client* sc_client; } ;
struct nfs4_delegation {int dl_perclnt; int dl_perfile; TYPE_1__ dl_stid; } ;
struct nfs4_client {int cl_delegations; } ;


 int EAGAIN ;
 int NFS4_DELEG_STID ;
 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ nfs4_delegation_exists (struct nfs4_client*,struct nfs4_file*) ;
 int refcount_inc (int *) ;
 int state_lock ;

__attribute__((used)) static int
hash_delegation_locked(struct nfs4_delegation *dp, struct nfs4_file *fp)
{
 struct nfs4_client *clp = dp->dl_stid.sc_client;

 lockdep_assert_held(&state_lock);
 lockdep_assert_held(&fp->fi_lock);

 if (nfs4_delegation_exists(clp, fp))
  return -EAGAIN;
 refcount_inc(&dp->dl_stid.sc_count);
 dp->dl_stid.sc_type = NFS4_DELEG_STID;
 list_add(&dp->dl_perfile, &fp->fi_delegations);
 list_add(&dp->dl_perclnt, &clp->cl_delegations);
 return 0;
}
