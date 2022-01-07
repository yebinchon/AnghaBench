
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfsd4_session {struct nfs4_client* se_client; int se_perclnt; int se_hash; } ;
struct nfs4_client {int cl_lock; int net; } ;


 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
unhash_session(struct nfsd4_session *ses)
{
 struct nfs4_client *clp = ses->se_client;
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 lockdep_assert_held(&nn->client_lock);

 list_del(&ses->se_hash);
 spin_lock(&ses->se_client->cl_lock);
 list_del(&ses->se_perclnt);
 spin_unlock(&ses->se_client->cl_lock);
}
