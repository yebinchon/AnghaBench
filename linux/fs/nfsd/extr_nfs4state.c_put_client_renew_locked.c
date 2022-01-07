
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfs4_client {int cl_rpc_users; int net; } ;


 int atomic_dec_and_test (int *) ;
 int expiry_wq ;
 int is_client_expired (struct nfs4_client*) ;
 int lockdep_assert_held (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int renew_client_locked (struct nfs4_client*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void put_client_renew_locked(struct nfs4_client *clp)
{
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 lockdep_assert_held(&nn->client_lock);

 if (!atomic_dec_and_test(&clp->cl_rpc_users))
  return;
 if (!is_client_expired(clp))
  renew_client_locked(clp);
 else
  wake_up_all(&expiry_wq);
}
