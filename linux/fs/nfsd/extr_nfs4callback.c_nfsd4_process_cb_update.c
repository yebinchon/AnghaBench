
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_session {int dummy; } ;
struct nfsd4_conn {struct nfsd4_session* cn_session; int cn_xprt; } ;
struct nfsd4_callback {struct nfs4_client* cb_clp; } ;
struct TYPE_2__ {int * cb_xprt; } ;
struct nfs4_client {int cl_flags; int cl_lock; TYPE_1__ cl_cb_conn; int * cl_cb_cred; int * cl_cb_client; } ;
struct nfs4_cb_conn {int cb_xprt; } ;


 int BUG_ON (int) ;
 int NFSD4_CLIENT_CB_FLAG_MASK ;
 int NFSD4_CLIENT_CB_KILL ;
 int NFSD4_CLIENT_CB_UPDATE ;
 struct nfsd4_conn* __nfsd4_find_backchannel (struct nfs4_client*) ;
 int clear_bit (int ,int*) ;
 int memcpy (struct nfs4_cb_conn*,TYPE_1__*,int) ;
 int nfsd4_mark_cb_down (struct nfs4_client*,int) ;
 int put_cred (int *) ;
 int rpc_shutdown_client (int *) ;
 int setup_callback_client (struct nfs4_client*,struct nfs4_cb_conn*,struct nfsd4_session*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int svc_xprt_get (int ) ;
 int svc_xprt_put (int *) ;
 scalar_t__ test_bit (int ,int*) ;

__attribute__((used)) static void nfsd4_process_cb_update(struct nfsd4_callback *cb)
{
 struct nfs4_cb_conn conn;
 struct nfs4_client *clp = cb->cb_clp;
 struct nfsd4_session *ses = ((void*)0);
 struct nfsd4_conn *c;
 int err;





 if (clp->cl_cb_client) {
  rpc_shutdown_client(clp->cl_cb_client);
  clp->cl_cb_client = ((void*)0);
  put_cred(clp->cl_cb_cred);
  clp->cl_cb_cred = ((void*)0);
 }
 if (clp->cl_cb_conn.cb_xprt) {
  svc_xprt_put(clp->cl_cb_conn.cb_xprt);
  clp->cl_cb_conn.cb_xprt = ((void*)0);
 }
 if (test_bit(NFSD4_CLIENT_CB_KILL, &clp->cl_flags))
  return;
 spin_lock(&clp->cl_lock);




 BUG_ON(!(clp->cl_flags & NFSD4_CLIENT_CB_FLAG_MASK));
 clear_bit(NFSD4_CLIENT_CB_UPDATE, &clp->cl_flags);
 memcpy(&conn, &cb->cb_clp->cl_cb_conn, sizeof(struct nfs4_cb_conn));
 c = __nfsd4_find_backchannel(clp);
 if (c) {
  svc_xprt_get(c->cn_xprt);
  conn.cb_xprt = c->cn_xprt;
  ses = c->cn_session;
 }
 spin_unlock(&clp->cl_lock);

 err = setup_callback_client(clp, &conn, ses);
 if (err) {
  nfsd4_mark_cb_down(clp, err);
  return;
 }
}
