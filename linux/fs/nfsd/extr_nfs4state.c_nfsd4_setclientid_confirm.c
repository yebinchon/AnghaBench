
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_setclientid_confirm {int sc_clientid; int sc_confirm; } ;
union nfsd4_op_u {struct nfsd4_setclientid_confirm setclientid_confirm; } ;
struct svc_rqst {int rq_cred; } ;
struct nfsd_net {int client_lock; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int cl_cred; int cl_name; int cl_cb_conn; int cl_confirm; } ;
typedef int nfs4_verifier ;
typedef int clientid_t ;
typedef scalar_t__ __be32 ;


 scalar_t__ STALE_CLIENTID (int *,struct nfsd_net*) ;
 int SVC_NET (struct svc_rqst*) ;
 scalar_t__ client_has_state (struct nfs4_client*) ;
 int expire_client (struct nfs4_client*) ;
 struct nfs4_client* find_confirmed_client (int *,int,struct nfsd_net*) ;
 struct nfs4_client* find_confirmed_client_by_name (int *,struct nfsd_net*) ;
 struct nfs4_client* find_unconfirmed_client (int *,int,struct nfsd_net*) ;
 int get_client_locked (struct nfs4_client*) ;
 scalar_t__ mark_client_expired_locked (struct nfs4_client*) ;
 int move_to_confirmed (struct nfs4_client*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 scalar_t__ nfs_ok ;
 int nfsd4_change_callback (struct nfs4_client*,int *) ;
 int nfsd4_probe_callback (struct nfs4_client*) ;
 int nfsd_net_id ;
 scalar_t__ nfserr_clid_inuse ;
 scalar_t__ nfserr_stale_clientid ;
 int put_client_renew_locked (struct nfs4_client*) ;
 int same_creds (int *,int *) ;
 scalar_t__ same_verf (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unhash_client_locked (struct nfs4_client*) ;

__be32
nfsd4_setclientid_confirm(struct svc_rqst *rqstp,
   struct nfsd4_compound_state *cstate,
   union nfsd4_op_u *u)
{
 struct nfsd4_setclientid_confirm *setclientid_confirm =
   &u->setclientid_confirm;
 struct nfs4_client *conf, *unconf;
 struct nfs4_client *old = ((void*)0);
 nfs4_verifier confirm = setclientid_confirm->sc_confirm;
 clientid_t * clid = &setclientid_confirm->sc_clientid;
 __be32 status;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 if (STALE_CLIENTID(clid, nn))
  return nfserr_stale_clientid;

 spin_lock(&nn->client_lock);
 conf = find_confirmed_client(clid, 0, nn);
 unconf = find_unconfirmed_client(clid, 0, nn);







 status = nfserr_clid_inuse;
 if (unconf && !same_creds(&unconf->cl_cred, &rqstp->rq_cred))
  goto out;
 if (conf && !same_creds(&conf->cl_cred, &rqstp->rq_cred))
  goto out;

 if (!unconf || !same_verf(&confirm, &unconf->cl_confirm)) {
  if (conf && same_verf(&confirm, &conf->cl_confirm)) {

   status = nfs_ok;
  } else
   status = nfserr_stale_clientid;
  goto out;
 }
 status = nfs_ok;
 if (conf) {
  old = unconf;
  unhash_client_locked(old);
  nfsd4_change_callback(conf, &unconf->cl_cb_conn);
 } else {
  old = find_confirmed_client_by_name(&unconf->cl_name, nn);
  if (old) {
   status = nfserr_clid_inuse;
   if (client_has_state(old)
     && !same_creds(&unconf->cl_cred,
       &old->cl_cred))
    goto out;
   status = mark_client_expired_locked(old);
   if (status) {
    old = ((void*)0);
    goto out;
   }
  }
  move_to_confirmed(unconf);
  conf = unconf;
 }
 get_client_locked(conf);
 spin_unlock(&nn->client_lock);
 nfsd4_probe_callback(conf);
 spin_lock(&nn->client_lock);
 put_client_renew_locked(conf);
out:
 spin_unlock(&nn->client_lock);
 if (old)
  expire_client(old);
 return status;
}
