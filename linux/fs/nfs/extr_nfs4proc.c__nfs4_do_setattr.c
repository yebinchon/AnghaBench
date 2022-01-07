
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {struct cred const* rpc_cred; struct nfs_setattrres* rpc_resp; struct nfs_setattrargs* rpc_argp; int * rpc_proc; } ;
struct nfs_setattrres {int seq_res; int fattr; } ;
struct nfs_setattrargs {int stateid; int seq_args; TYPE_1__* iap; } ;
struct nfs_server {int client; } ;
struct nfs_open_context {scalar_t__ state; } ;
struct nfs_lock_context {int dummy; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int ia_valid; } ;


 int ATTR_SIZE ;
 int EBADF ;
 int EIO ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct nfs_lock_context*) ;
 size_t NFSPROC4_CLNT_SETATTR ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int PTR_ERR (struct nfs_lock_context*) ;
 unsigned long jiffies ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int) ;
 scalar_t__ nfs4_copy_delegation_stateid (struct inode*,int ,int *,struct cred const**) ;
 int * nfs4_procedures ;
 int nfs4_select_rw_stateid (scalar_t__,int ,struct nfs_lock_context*,int *,struct cred const**) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs4_valid_open_stateid (scalar_t__) ;
 int nfs_fattr_init (int ) ;
 struct nfs_lock_context* nfs_get_lock_context (struct nfs_open_context*) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;
 int put_cred (struct cred const*) ;
 int renew_lease (struct nfs_server*,unsigned long) ;
 int trace_nfs4_setattr (struct inode*,int *,int) ;
 int zero_stateid ;

__attribute__((used)) static int _nfs4_do_setattr(struct inode *inode,
       struct nfs_setattrargs *arg,
       struct nfs_setattrres *res,
       const struct cred *cred,
       struct nfs_open_context *ctx)
{
 struct nfs_server *server = NFS_SERVER(inode);
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_SETATTR],
  .rpc_argp = arg,
  .rpc_resp = res,
  .rpc_cred = cred,
 };
 const struct cred *delegation_cred = ((void*)0);
 unsigned long timestamp = jiffies;
 bool truncate;
 int status;

 nfs_fattr_init(res->fattr);


 truncate = (arg->iap->ia_valid & ATTR_SIZE) ? 1 : 0;
 if (!truncate)
  goto zero_stateid;

 if (nfs4_copy_delegation_stateid(inode, FMODE_WRITE, &arg->stateid, &delegation_cred)) {

 } else if (ctx != ((void*)0) && ctx->state) {
  struct nfs_lock_context *l_ctx;
  if (!nfs4_valid_open_stateid(ctx->state))
   return -EBADF;
  l_ctx = nfs_get_lock_context(ctx);
  if (IS_ERR(l_ctx))
   return PTR_ERR(l_ctx);
  status = nfs4_select_rw_stateid(ctx->state, FMODE_WRITE, l_ctx,
      &arg->stateid, &delegation_cred);
  nfs_put_lock_context(l_ctx);
  if (status == -EIO)
   return -EBADF;
 } else {
zero_stateid:
  nfs4_stateid_copy(&arg->stateid, &zero_stateid);
 }
 if (delegation_cred)
  msg.rpc_cred = delegation_cred;

 status = nfs4_call_sync(server->client, server, &msg, &arg->seq_args, &res->seq_res, 1);

 put_cred(delegation_cred);
 if (status == 0 && ctx != ((void*)0))
  renew_lease(server, timestamp);
 trace_nfs4_setattr(inode, &arg->stateid, status);
 return status;
}
