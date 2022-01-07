
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_net {int nfs_client_lock; int cb_ident_idr; } ;
struct nfs_client {int cl_count; } ;
struct net {int dummy; } ;


 struct nfs_client* idr_find (int *,int) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 int nfs_net_id ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfs_client *
nfs4_find_client_ident(struct net *net, int cb_ident)
{
 struct nfs_client *clp;
 struct nfs_net *nn = net_generic(net, nfs_net_id);

 spin_lock(&nn->nfs_client_lock);
 clp = idr_find(&nn->cb_ident_idr, cb_ident);
 if (clp)
  refcount_inc(&clp->cl_count);
 spin_unlock(&nn->nfs_client_lock);
 return clp;
}
