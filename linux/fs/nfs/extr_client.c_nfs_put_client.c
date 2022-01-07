
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_net {int nfs_client_lock; } ;
struct nfs_client {TYPE_1__* rpc_ops; int cl_superblocks; int cl_share_link; int cl_count; int cl_net; } ;
struct TYPE_2__ {int (* free_client ) (struct nfs_client*) ;} ;


 int WARN_ON_ONCE (int) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 struct nfs_net* net_generic (int ,int ) ;
 int nfs_cb_idr_remove_locked (struct nfs_client*) ;
 int nfs_net_id ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_client*) ;

void nfs_put_client(struct nfs_client *clp)
{
 struct nfs_net *nn;

 if (!clp)
  return;

 nn = net_generic(clp->cl_net, nfs_net_id);

 if (refcount_dec_and_lock(&clp->cl_count, &nn->nfs_client_lock)) {
  list_del(&clp->cl_share_link);
  nfs_cb_idr_remove_locked(clp);
  spin_unlock(&nn->nfs_client_lock);

  WARN_ON_ONCE(!list_empty(&clp->cl_superblocks));

  clp->rpc_ops->free_client(clp);
 }
}
