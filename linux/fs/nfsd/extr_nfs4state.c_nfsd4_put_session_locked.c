
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfsd4_session {int se_ref; struct nfs4_client* se_client; } ;
struct nfs4_client {int net; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int free_session (struct nfsd4_session*) ;
 scalar_t__ is_session_dead (struct nfsd4_session*) ;
 int lockdep_assert_held (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int put_client_renew_locked (struct nfs4_client*) ;

__attribute__((used)) static void nfsd4_put_session_locked(struct nfsd4_session *ses)
{
 struct nfs4_client *clp = ses->se_client;
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 lockdep_assert_held(&nn->client_lock);

 if (atomic_dec_and_test(&ses->se_ref) && is_session_dead(ses))
  free_session(ses);
 put_client_renew_locked(clp);
}
