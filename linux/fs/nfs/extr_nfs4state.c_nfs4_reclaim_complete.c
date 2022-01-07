
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;
struct nfs4_state_recovery_ops {int (* reclaim_complete ) (struct nfs_client*,struct cred const*) ;} ;
struct cred {int dummy; } ;


 int stub1 (struct nfs_client*,struct cred const*) ;

__attribute__((used)) static int nfs4_reclaim_complete(struct nfs_client *clp,
     const struct nfs4_state_recovery_ops *ops,
     const struct cred *cred)
{

 if (ops->reclaim_complete)
  return ops->reclaim_complete(clp, cred);
 return 0;
}
