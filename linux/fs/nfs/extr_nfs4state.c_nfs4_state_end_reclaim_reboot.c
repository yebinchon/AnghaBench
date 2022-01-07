
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int cl_state; TYPE_1__* cl_mvops; } ;
struct nfs4_state_recovery_ops {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct nfs4_state_recovery_ops* reboot_recovery_ops; } ;


 int NFS4CLNT_RECLAIM_REBOOT ;
 int NFS4ERR_CONN_NOT_BOUND_TO_SESSION ;
 struct cred* nfs4_get_clid_cred (struct nfs_client*) ;
 int nfs4_reclaim_complete (struct nfs_client*,struct nfs4_state_recovery_ops const*,struct cred const*) ;
 int nfs4_state_clear_reclaim_reboot (struct nfs_client*) ;
 int put_cred (struct cred const*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs4_state_end_reclaim_reboot(struct nfs_client *clp)
{
 const struct nfs4_state_recovery_ops *ops;
 const struct cred *cred;
 int err;

 if (!nfs4_state_clear_reclaim_reboot(clp))
  return;
 ops = clp->cl_mvops->reboot_recovery_ops;
 cred = nfs4_get_clid_cred(clp);
 err = nfs4_reclaim_complete(clp, ops, cred);
 put_cred(cred);
 if (err == -NFS4ERR_CONN_NOT_BOUND_TO_SESSION)
  set_bit(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state);
}
