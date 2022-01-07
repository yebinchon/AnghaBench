
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfs4_client {int net; } ;


 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unhash_client_locked (struct nfs4_client*) ;

__attribute__((used)) static void
unhash_client(struct nfs4_client *clp)
{
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 spin_lock(&nn->client_lock);
 unhash_client_locked(clp);
 spin_unlock(&nn->client_lock);
}
