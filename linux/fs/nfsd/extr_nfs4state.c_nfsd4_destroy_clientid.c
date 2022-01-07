
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_destroy_clientid {int clientid; } ;
union nfsd4_op_u {struct nfsd4_destroy_clientid destroy_clientid; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int client_lock; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int dummy; } ;
typedef scalar_t__ __be32 ;


 int SVC_NET (struct svc_rqst*) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ client_has_state (struct nfs4_client*) ;
 int expire_client (struct nfs4_client*) ;
 struct nfs4_client* find_confirmed_client (int *,int,struct nfsd_net*) ;
 struct nfs4_client* find_unconfirmed_client (int *,int,struct nfsd_net*) ;
 scalar_t__ mark_client_expired_locked (struct nfs4_client*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd4_mach_creds_match (struct nfs4_client*,struct svc_rqst*) ;
 int nfsd_net_id ;
 scalar_t__ nfserr_clientid_busy ;
 scalar_t__ nfserr_stale_clientid ;
 scalar_t__ nfserr_wrong_cred ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unhash_client_locked (struct nfs4_client*) ;

__be32
nfsd4_destroy_clientid(struct svc_rqst *rqstp,
  struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 struct nfsd4_destroy_clientid *dc = &u->destroy_clientid;
 struct nfs4_client *conf, *unconf;
 struct nfs4_client *clp = ((void*)0);
 __be32 status = 0;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 spin_lock(&nn->client_lock);
 unconf = find_unconfirmed_client(&dc->clientid, 1, nn);
 conf = find_confirmed_client(&dc->clientid, 1, nn);
 WARN_ON_ONCE(conf && unconf);

 if (conf) {
  if (client_has_state(conf)) {
   status = nfserr_clientid_busy;
   goto out;
  }
  status = mark_client_expired_locked(conf);
  if (status)
   goto out;
  clp = conf;
 } else if (unconf)
  clp = unconf;
 else {
  status = nfserr_stale_clientid;
  goto out;
 }
 if (!nfsd4_mach_creds_match(clp, rqstp)) {
  clp = ((void*)0);
  status = nfserr_wrong_cred;
  goto out;
 }
 unhash_client_locked(clp);
out:
 spin_unlock(&nn->client_lock);
 if (clp)
  expire_client(clp);
 return status;
}
