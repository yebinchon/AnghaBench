
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfs4_client {int cl_rpc_users; int net; } ;
typedef int __be32 ;


 int atomic_inc (int *) ;
 scalar_t__ is_client_expired (struct nfs4_client*) ;
 int lockdep_assert_held (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfs_ok ;
 int nfsd_net_id ;
 int nfserr_expired ;

__attribute__((used)) static __be32 get_client_locked(struct nfs4_client *clp)
{
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 lockdep_assert_held(&nn->client_lock);

 if (is_client_expired(clp))
  return nfserr_expired;
 atomic_inc(&clp->cl_rpc_users);
 return nfs_ok;
}
