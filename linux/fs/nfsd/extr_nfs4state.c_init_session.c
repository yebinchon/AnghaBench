
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int * sessionid_hashtbl; } ;
struct nfsd4_session {int se_cb_seq_nr; int se_perclnt; int se_hash; int se_sessionid; int se_ref; int se_cb_sec; int se_cb_prog; int se_flags; int se_conns; struct nfs4_client* se_client; } ;
struct nfsd4_create_session {int cb_sec; int callback_prog; int flags; } ;
struct TYPE_2__ {int cb_addrlen; int cb_addr; } ;
struct nfs4_client {TYPE_1__ cl_cb_conn; int cl_lock; int cl_sessions; } ;


 int INIT_LIST_HEAD (int *) ;
 int SVC_NET (struct svc_rqst*) ;
 int atomic_set (int *,int ) ;
 int gen_sessionid (struct nfsd4_session*) ;
 int hash_sessionid (int *) ;
 int list_add (int *,int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int rpc_copy_addr (struct sockaddr*,struct sockaddr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sockaddr* svc_addr (struct svc_rqst*) ;
 int svc_addr_len (struct sockaddr*) ;

__attribute__((used)) static void init_session(struct svc_rqst *rqstp, struct nfsd4_session *new, struct nfs4_client *clp, struct nfsd4_create_session *cses)
{
 int idx;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 new->se_client = clp;
 gen_sessionid(new);

 INIT_LIST_HEAD(&new->se_conns);

 new->se_cb_seq_nr = 1;
 new->se_flags = cses->flags;
 new->se_cb_prog = cses->callback_prog;
 new->se_cb_sec = cses->cb_sec;
 atomic_set(&new->se_ref, 0);
 idx = hash_sessionid(&new->se_sessionid);
 list_add(&new->se_hash, &nn->sessionid_hashtbl[idx]);
 spin_lock(&clp->cl_lock);
 list_add(&new->se_perclnt, &clp->cl_sessions);
 spin_unlock(&clp->cl_lock);

 {
  struct sockaddr *sa = svc_addr(rqstp);







  rpc_copy_addr((struct sockaddr *)&clp->cl_cb_conn.cb_addr, sa);
  clp->cl_cb_conn.cb_addrlen = svc_addr_len(sa);
 }
}
