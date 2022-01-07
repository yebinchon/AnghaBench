
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_rpc_ops {struct nfs_client* (* alloc_client ) (struct nfs_client_initdata const*) ;struct nfs_client* (* init_client ) (struct nfs_client*,struct nfs_client_initdata const*) ;} ;
struct nfs_net {int nfs_client_lock; int nfs_client_list; } ;
struct nfs_client_initdata {int init_flags; int * hostname; TYPE_1__* nfs_mod; int net; } ;
struct nfs_client {int cl_flags; int cl_share_link; TYPE_2__* rpc_ops; } ;
struct TYPE_4__ {int (* free_client ) (struct nfs_client*) ;} ;
struct TYPE_3__ {struct nfs_rpc_ops* rpc_ops; } ;


 scalar_t__ IS_ERR (struct nfs_client*) ;
 int WARN_ON (int) ;
 int list_add_tail (int *,int *) ;
 struct nfs_net* net_generic (int ,int ) ;
 struct nfs_client* nfs_found_client (struct nfs_client_initdata const*,struct nfs_client*) ;
 struct nfs_client* nfs_match_client (struct nfs_client_initdata const*) ;
 int nfs_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_client*) ;
 struct nfs_client* stub2 (struct nfs_client*,struct nfs_client_initdata const*) ;
 struct nfs_client* stub3 (struct nfs_client_initdata const*) ;

struct nfs_client *nfs_get_client(const struct nfs_client_initdata *cl_init)
{
 struct nfs_client *clp, *new = ((void*)0);
 struct nfs_net *nn = net_generic(cl_init->net, nfs_net_id);
 const struct nfs_rpc_ops *rpc_ops = cl_init->nfs_mod->rpc_ops;

 if (cl_init->hostname == ((void*)0)) {
  WARN_ON(1);
  return ((void*)0);
 }


 do {
  spin_lock(&nn->nfs_client_lock);

  clp = nfs_match_client(cl_init);
  if (clp) {
   spin_unlock(&nn->nfs_client_lock);
   if (new)
    new->rpc_ops->free_client(new);
   if (IS_ERR(clp))
    return clp;
   return nfs_found_client(cl_init, clp);
  }
  if (new) {
   list_add_tail(&new->cl_share_link,
     &nn->nfs_client_list);
   spin_unlock(&nn->nfs_client_lock);
   new->cl_flags = cl_init->init_flags;
   return rpc_ops->init_client(new, cl_init);
  }

  spin_unlock(&nn->nfs_client_lock);

  new = rpc_ops->alloc_client(cl_init);
 } while (!IS_ERR(new));

 return new;
}
