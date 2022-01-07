
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {TYPE_1__* cl_mvops; } ;
struct nfs4_state_recovery_ops {int (* establish_clid ) (struct nfs_client*,struct cred const*) ;} ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct nfs4_state_recovery_ops* reboot_recovery_ops; } ;


 int ENOENT ;
 int nfs4_begin_drain_session (struct nfs_client*) ;
 struct cred* nfs4_get_clid_cred (struct nfs_client*) ;
 int pnfs_destroy_all_layouts (struct nfs_client*) ;
 int put_cred (struct cred const*) ;
 int stub1 (struct nfs_client*,struct cred const*) ;

__attribute__((used)) static int nfs4_establish_lease(struct nfs_client *clp)
{
 const struct cred *cred;
 const struct nfs4_state_recovery_ops *ops =
  clp->cl_mvops->reboot_recovery_ops;
 int status;

 status = nfs4_begin_drain_session(clp);
 if (status != 0)
  return status;
 cred = nfs4_get_clid_cred(clp);
 if (cred == ((void*)0))
  return -ENOENT;
 status = ops->establish_clid(clp, cred);
 put_cred(cred);
 if (status != 0)
  return status;
 pnfs_destroy_all_layouts(clp);
 return 0;
}
