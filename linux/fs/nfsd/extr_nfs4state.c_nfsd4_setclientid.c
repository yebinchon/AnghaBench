
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_5__ {int cl_id; int cl_boot; } ;
struct xdr_netobj {int dummy; } ;
struct nfsd4_setclientid {TYPE_3__ se_confirm; TYPE_1__ se_clientid; int se_verf; struct xdr_netobj se_name; } ;
union nfsd4_op_u {struct nfsd4_setclientid setclientid; } ;
struct svc_rqst {int rq_cred; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int client_lock; } ;
struct nfsd4_compound_state {int dummy; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_6__ {int cl_id; int cl_boot; } ;
struct nfs4_client {TYPE_4__ cl_confirm; TYPE_2__ cl_clientid; scalar_t__ cl_minorversion; int cl_verifier; int cl_addr; int cl_cred; } ;
typedef int nfs4_verifier ;
typedef int addr_str ;
typedef int __be32 ;


 int INET6_ADDRSTRLEN ;
 int SVC_NET (struct svc_rqst*) ;
 int add_to_unconfirmed (struct nfs4_client*) ;
 scalar_t__ client_has_state (struct nfs4_client*) ;
 scalar_t__ clp_used_exchangeid (struct nfs4_client*) ;
 int copy_clid (struct nfs4_client*,struct nfs4_client*) ;
 struct nfs4_client* create_client (struct xdr_netobj,struct svc_rqst*,int *) ;
 int dprintk (char*,char*) ;
 int expire_client (struct nfs4_client*) ;
 struct nfs4_client* find_confirmed_client_by_name (struct xdr_netobj*,struct nfsd_net*) ;
 struct nfs4_client* find_unconfirmed_client_by_name (struct xdr_netobj*,struct nfsd_net*) ;
 int free_client (struct nfs4_client*) ;
 int gen_callback (struct nfs4_client*,struct nfsd4_setclientid*,struct svc_rqst*) ;
 int gen_confirm (struct nfs4_client*,struct nfsd_net*) ;
 int memcpy (int ,int ,int) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfs_ok ;
 int nfsd_net_id ;
 int nfserr_clid_inuse ;
 int nfserr_jukebox ;
 int rpc_ntop (struct sockaddr*,char*,int) ;
 int same_creds (int *,int *) ;
 scalar_t__ same_verf (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unhash_client_locked (struct nfs4_client*) ;

__be32
nfsd4_setclientid(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    union nfsd4_op_u *u)
{
 struct nfsd4_setclientid *setclid = &u->setclientid;
 struct xdr_netobj clname = setclid->se_name;
 nfs4_verifier clverifier = setclid->se_verf;
 struct nfs4_client *conf, *new;
 struct nfs4_client *unconf = ((void*)0);
 __be32 status;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 new = create_client(clname, rqstp, &clverifier);
 if (new == ((void*)0))
  return nfserr_jukebox;

 spin_lock(&nn->client_lock);
 conf = find_confirmed_client_by_name(&clname, nn);
 if (conf && client_has_state(conf)) {

  status = nfserr_clid_inuse;
  if (clp_used_exchangeid(conf))
   goto out;
  if (!same_creds(&conf->cl_cred, &rqstp->rq_cred)) {
   char addr_str[INET6_ADDRSTRLEN];
   rpc_ntop((struct sockaddr *) &conf->cl_addr, addr_str,
     sizeof(addr_str));
   dprintk("NFSD: setclientid: string in use by client "
    "at %s\n", addr_str);
   goto out;
  }
 }
 unconf = find_unconfirmed_client_by_name(&clname, nn);
 if (unconf)
  unhash_client_locked(unconf);
 if (conf && same_verf(&conf->cl_verifier, &clverifier)) {

  copy_clid(new, conf);
  gen_confirm(new, nn);
 } else
  ;
 new->cl_minorversion = 0;
 gen_callback(new, setclid, rqstp);
 add_to_unconfirmed(new);
 setclid->se_clientid.cl_boot = new->cl_clientid.cl_boot;
 setclid->se_clientid.cl_id = new->cl_clientid.cl_id;
 memcpy(setclid->se_confirm.data, new->cl_confirm.data, sizeof(setclid->se_confirm.data));
 new = ((void*)0);
 status = nfs_ok;
out:
 spin_unlock(&nn->client_lock);
 if (new)
  free_client(new);
 if (unconf)
  expire_client(unconf);
 return status;
}
