
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfsd4_session {struct nfs4_client* se_client; } ;
struct nfs4_client {int net; } ;


 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd4_put_session_locked (struct nfsd4_session*) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfsd4_put_session(struct nfsd4_session *ses)
{
 struct nfs4_client *clp = ses->se_client;
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 spin_lock(&nn->client_lock);
 nfsd4_put_session_locked(ses);
 spin_unlock(&nn->client_lock);
}
