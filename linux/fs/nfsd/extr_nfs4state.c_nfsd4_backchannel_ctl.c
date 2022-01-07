
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_backchannel_ctl {int bc_cb_sec; int bc_cb_program; } ;
union nfsd4_op_u {struct nfsd4_backchannel_ctl backchannel_ctl; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int client_lock; } ;
struct nfsd4_session {int se_client; int se_cb_sec; int se_cb_prog; } ;
struct nfsd4_compound_state {struct nfsd4_session* session; } ;
typedef scalar_t__ __be32 ;


 int SVC_NET (struct svc_rqst*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_check_cb_sec (int *) ;
 int nfsd4_probe_callback (int ) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__be32 nfsd4_backchannel_ctl(struct svc_rqst *rqstp,
  struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 struct nfsd4_backchannel_ctl *bc = &u->backchannel_ctl;
 struct nfsd4_session *session = cstate->session;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);
 __be32 status;

 status = nfsd4_check_cb_sec(&bc->bc_cb_sec);
 if (status)
  return status;
 spin_lock(&nn->client_lock);
 session->se_cb_prog = bc->bc_cb_program;
 session->se_cb_sec = bc->bc_cb_sec;
 spin_unlock(&nn->client_lock);

 nfsd4_probe_callback(session->se_client);

 return nfs_ok;
}
