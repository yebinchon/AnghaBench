
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_bind_conn_to_session {int dir; int sessionid; } ;
union nfsd4_op_u {struct nfsd4_bind_conn_to_session bind_conn_to_session; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int client_lock; } ;
struct nfsd4_session {int se_client; } ;
struct nfsd4_conn {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;


 struct net* SVC_NET (struct svc_rqst*) ;
 struct nfsd4_conn* alloc_conn (struct svc_rqst*,int ) ;
 struct nfsd4_session* find_in_sessionid_hashtbl (int *,struct net*,scalar_t__*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 scalar_t__ nfs_ok ;
 int nfsd4_init_conn (struct svc_rqst*,struct nfsd4_conn*,struct nfsd4_session*) ;
 int nfsd4_last_compound_op (struct svc_rqst*) ;
 int nfsd4_mach_creds_match (int ,struct svc_rqst*) ;
 scalar_t__ nfsd4_map_bcts_dir (int *) ;
 int nfsd4_put_session (struct nfsd4_session*) ;
 int nfsd_net_id ;
 scalar_t__ nfserr_jukebox ;
 scalar_t__ nfserr_not_only_op ;
 scalar_t__ nfserr_wrong_cred ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__be32 nfsd4_bind_conn_to_session(struct svc_rqst *rqstp,
       struct nfsd4_compound_state *cstate,
       union nfsd4_op_u *u)
{
 struct nfsd4_bind_conn_to_session *bcts = &u->bind_conn_to_session;
 __be32 status;
 struct nfsd4_conn *conn;
 struct nfsd4_session *session;
 struct net *net = SVC_NET(rqstp);
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (!nfsd4_last_compound_op(rqstp))
  return nfserr_not_only_op;
 spin_lock(&nn->client_lock);
 session = find_in_sessionid_hashtbl(&bcts->sessionid, net, &status);
 spin_unlock(&nn->client_lock);
 if (!session)
  goto out_no_session;
 status = nfserr_wrong_cred;
 if (!nfsd4_mach_creds_match(session->se_client, rqstp))
  goto out;
 status = nfsd4_map_bcts_dir(&bcts->dir);
 if (status)
  goto out;
 conn = alloc_conn(rqstp, bcts->dir);
 status = nfserr_jukebox;
 if (!conn)
  goto out;
 nfsd4_init_conn(rqstp, conn, session);
 status = nfs_ok;
out:
 nfsd4_put_session(session);
out_no_session:
 return status;
}
