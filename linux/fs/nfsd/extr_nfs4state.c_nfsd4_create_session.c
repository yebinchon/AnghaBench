
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct nfsd4_create_session {int flags; int fore_channel; scalar_t__ seqid; TYPE_1__ sessionid; int clientid; int back_channel; int cb_sec; } ;
union nfsd4_op_u {struct nfsd4_create_session create_session; } ;
struct svc_rqst {int rq_cred; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int client_lock; } ;
struct TYPE_4__ {int data; } ;
struct nfsd4_session {TYPE_2__ se_sessionid; } ;
struct nfsd4_conn {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfsd4_clid_slot {scalar_t__ sl_seqid; } ;
struct nfs4_client {int cl_name; struct nfsd4_clid_slot cl_cs_slot; int cl_addr; int cl_cred; } ;
typedef scalar_t__ __be32 ;


 int NFS4_MAX_SESSIONID_LEN ;
 int SESSION4_FLAG_MASK_A ;
 int SESSION4_PERSIST ;
 int SESSION4_RDMA ;
 int SVC_NET (struct svc_rqst*) ;
 int WARN_ON_ONCE (int) ;
 int __free_session (struct nfsd4_session*) ;
 struct nfsd4_conn* alloc_conn_from_crses (struct svc_rqst*,struct nfsd4_create_session*) ;
 struct nfsd4_session* alloc_session (int *,int *) ;
 scalar_t__ check_backchannel_attrs (int *) ;
 scalar_t__ check_forechannel_attrs (int *,struct nfsd_net*) ;
 scalar_t__ check_slot_seqid (scalar_t__,scalar_t__,int ) ;
 int expire_client (struct nfs4_client*) ;
 struct nfs4_client* find_confirmed_client (int *,int,struct nfsd_net*) ;
 struct nfs4_client* find_confirmed_client_by_name (int *,struct nfsd_net*) ;
 struct nfs4_client* find_unconfirmed_client (int *,int,struct nfsd_net*) ;
 int free_conn (struct nfsd4_conn*) ;
 int init_session (struct svc_rqst*,struct nfsd4_session*,struct nfs4_client*,struct nfsd4_create_session*) ;
 scalar_t__ mark_client_expired_locked (struct nfs4_client*) ;
 int memcpy (int ,int ,int ) ;
 int move_to_confirmed (struct nfs4_client*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 scalar_t__ nfs_ok ;
 int nfsd4_cache_create_session (struct nfsd4_create_session*,struct nfsd4_clid_slot*,scalar_t__) ;
 scalar_t__ nfsd4_check_cb_sec (int *) ;
 int nfsd4_get_session_locked (struct nfsd4_session*) ;
 int nfsd4_init_conn (struct svc_rqst*,struct nfsd4_conn*,struct nfsd4_session*) ;
 int nfsd4_mach_creds_match (struct nfs4_client*,struct svc_rqst*) ;
 int nfsd4_put_drc_mem (int *) ;
 int nfsd4_put_session (struct nfsd4_session*) ;
 scalar_t__ nfsd4_replay_create_session (struct nfsd4_create_session*,struct nfsd4_clid_slot*) ;
 int nfsd_net_id ;
 scalar_t__ nfserr_clid_inuse ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserr_jukebox ;
 scalar_t__ nfserr_replay_cache ;
 scalar_t__ nfserr_seq_misordered ;
 scalar_t__ nfserr_stale_clientid ;
 scalar_t__ nfserr_wrong_cred ;
 int rpc_cmp_addr (struct sockaddr*,struct sockaddr*) ;
 int same_creds (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sockaddr* svc_addr (struct svc_rqst*) ;

__be32
nfsd4_create_session(struct svc_rqst *rqstp,
  struct nfsd4_compound_state *cstate, union nfsd4_op_u *u)
{
 struct nfsd4_create_session *cr_ses = &u->create_session;
 struct sockaddr *sa = svc_addr(rqstp);
 struct nfs4_client *conf, *unconf;
 struct nfs4_client *old = ((void*)0);
 struct nfsd4_session *new;
 struct nfsd4_conn *conn;
 struct nfsd4_clid_slot *cs_slot = ((void*)0);
 __be32 status = 0;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 if (cr_ses->flags & ~SESSION4_FLAG_MASK_A)
  return nfserr_inval;
 status = nfsd4_check_cb_sec(&cr_ses->cb_sec);
 if (status)
  return status;
 status = check_forechannel_attrs(&cr_ses->fore_channel, nn);
 if (status)
  return status;
 status = check_backchannel_attrs(&cr_ses->back_channel);
 if (status)
  goto out_release_drc_mem;
 status = nfserr_jukebox;
 new = alloc_session(&cr_ses->fore_channel, &cr_ses->back_channel);
 if (!new)
  goto out_release_drc_mem;
 conn = alloc_conn_from_crses(rqstp, cr_ses);
 if (!conn)
  goto out_free_session;

 spin_lock(&nn->client_lock);
 unconf = find_unconfirmed_client(&cr_ses->clientid, 1, nn);
 conf = find_confirmed_client(&cr_ses->clientid, 1, nn);
 WARN_ON_ONCE(conf && unconf);

 if (conf) {
  status = nfserr_wrong_cred;
  if (!nfsd4_mach_creds_match(conf, rqstp))
   goto out_free_conn;
  cs_slot = &conf->cl_cs_slot;
  status = check_slot_seqid(cr_ses->seqid, cs_slot->sl_seqid, 0);
  if (status) {
   if (status == nfserr_replay_cache)
    status = nfsd4_replay_create_session(cr_ses, cs_slot);
   goto out_free_conn;
  }
 } else if (unconf) {
  if (!same_creds(&unconf->cl_cred, &rqstp->rq_cred) ||
      !rpc_cmp_addr(sa, (struct sockaddr *) &unconf->cl_addr)) {
   status = nfserr_clid_inuse;
   goto out_free_conn;
  }
  status = nfserr_wrong_cred;
  if (!nfsd4_mach_creds_match(unconf, rqstp))
   goto out_free_conn;
  cs_slot = &unconf->cl_cs_slot;
  status = check_slot_seqid(cr_ses->seqid, cs_slot->sl_seqid, 0);
  if (status) {

   status = nfserr_seq_misordered;
   goto out_free_conn;
  }
  old = find_confirmed_client_by_name(&unconf->cl_name, nn);
  if (old) {
   status = mark_client_expired_locked(old);
   if (status) {
    old = ((void*)0);
    goto out_free_conn;
   }
  }
  move_to_confirmed(unconf);
  conf = unconf;
 } else {
  status = nfserr_stale_clientid;
  goto out_free_conn;
 }
 status = nfs_ok;

 cr_ses->flags &= ~SESSION4_PERSIST;

 cr_ses->flags &= ~SESSION4_RDMA;

 init_session(rqstp, new, conf, cr_ses);
 nfsd4_get_session_locked(new);

 memcpy(cr_ses->sessionid.data, new->se_sessionid.data,
        NFS4_MAX_SESSIONID_LEN);
 cs_slot->sl_seqid++;
 cr_ses->seqid = cs_slot->sl_seqid;


 nfsd4_cache_create_session(cr_ses, cs_slot, status);
 spin_unlock(&nn->client_lock);

 nfsd4_init_conn(rqstp, conn, new);
 nfsd4_put_session(new);
 if (old)
  expire_client(old);
 return status;
out_free_conn:
 spin_unlock(&nn->client_lock);
 free_conn(conn);
 if (old)
  expire_client(old);
out_free_session:
 __free_session(new);
out_release_drc_mem:
 nfsd4_put_drc_mem(&cr_ses->fore_channel);
 return status;
}
