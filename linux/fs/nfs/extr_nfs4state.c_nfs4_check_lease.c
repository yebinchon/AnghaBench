
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int cl_state; TYPE_1__* cl_mvops; } ;
struct nfs4_state_maintenance_ops {int (* renew_lease ) (struct nfs_client*,struct cred const*) ;struct cred* (* get_state_renewal_cred ) (struct nfs_client*) ;} ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct nfs4_state_maintenance_ops* state_renewal_ops; } ;


 int ENOKEY ;
 int ETIMEDOUT ;
 int NFS4CLNT_CHECK_LEASE ;
 int NFS4CLNT_LEASE_EXPIRED ;
 struct cred* nfs4_get_clid_cred (struct nfs_client*) ;
 int nfs4_recovery_handle_error (struct nfs_client*,int) ;
 int put_cred (struct cred const*) ;
 int set_bit (int ,int *) ;
 struct cred* stub1 (struct nfs_client*) ;
 int stub2 (struct nfs_client*,struct cred const*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_check_lease(struct nfs_client *clp)
{
 const struct cred *cred;
 const struct nfs4_state_maintenance_ops *ops =
  clp->cl_mvops->state_renewal_ops;
 int status;


 if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
  return 0;
 cred = ops->get_state_renewal_cred(clp);
 if (cred == ((void*)0)) {
  cred = nfs4_get_clid_cred(clp);
  status = -ENOKEY;
  if (cred == ((void*)0))
   goto out;
 }
 status = ops->renew_lease(clp, cred);
 put_cred(cred);
 if (status == -ETIMEDOUT) {
  set_bit(NFS4CLNT_CHECK_LEASE, &clp->cl_state);
  return 0;
 }
out:
 return nfs4_recovery_handle_error(clp, status);
}
