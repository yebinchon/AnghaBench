
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfs4_client {int * cl_nfsd_dentry; int cl_lru; int cl_rpc_users; int cl_lock; scalar_t__ cl_time; int net; } ;


 scalar_t__ atomic_read (int *) ;
 int expire_client (struct nfs4_client*) ;
 int expiry_wq ;
 int list_empty (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unhash_client_locked (struct nfs4_client*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void force_expire_client(struct nfs4_client *clp)
{
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);
 bool already_expired;

 spin_lock(&clp->cl_lock);
 clp->cl_time = 0;
 spin_unlock(&clp->cl_lock);

 wait_event(expiry_wq, atomic_read(&clp->cl_rpc_users) == 0);
 spin_lock(&nn->client_lock);
 already_expired = list_empty(&clp->cl_lru);
 if (!already_expired)
  unhash_client_locked(clp);
 spin_unlock(&nn->client_lock);

 if (!already_expired)
  expire_client(clp);
 else
  wait_event(expiry_wq, clp->cl_nfsd_dentry == ((void*)0));
}
