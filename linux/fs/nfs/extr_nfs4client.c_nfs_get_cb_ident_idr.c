
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_net {int nfs_client_lock; int cb_ident_idr; } ;
struct nfs_client {int cl_cb_ident; TYPE_1__* rpc_ops; int cl_net; } ;
struct TYPE_2__ {int version; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int idr_alloc (int *,struct nfs_client*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 struct nfs_net* net_generic (int ,int ) ;
 int nfs_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nfs_get_cb_ident_idr(struct nfs_client *clp, int minorversion)
{
 int ret = 0;
 struct nfs_net *nn = net_generic(clp->cl_net, nfs_net_id);

 if (clp->rpc_ops->version != 4 || minorversion != 0)
  return ret;
 idr_preload(GFP_KERNEL);
 spin_lock(&nn->nfs_client_lock);
 ret = idr_alloc(&nn->cb_ident_idr, clp, 1, 0, GFP_NOWAIT);
 if (ret >= 0)
  clp->cl_cb_ident = ret;
 spin_unlock(&nn->nfs_client_lock);
 idr_preload_end();
 return ret < 0 ? ret : 0;
}
