
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_cred {TYPE_3__* cr_ops; } ;
struct rpc_auth {TYPE_2__* au_ops; } ;
struct nfs_open_context {struct rpc_cred* ll_cred; int cred; } ;
struct inode {int dummy; } ;
struct auth_cred {int cred; } ;
struct TYPE_8__ {TYPE_1__* client; } ;
struct TYPE_7__ {scalar_t__ (* crkey_timeout ) (struct rpc_cred*) ;int (* crmatch ) (struct auth_cred*,struct rpc_cred*,int ) ;} ;
struct TYPE_6__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int ) ;} ;
struct TYPE_5__ {struct rpc_auth* cl_auth; } ;


 scalar_t__ IS_ERR (struct rpc_cred*) ;
 TYPE_4__* NFS_SERVER (struct inode*) ;
 int put_rpccred (struct rpc_cred*) ;
 int stub1 (struct auth_cred*,struct rpc_cred*,int ) ;
 struct rpc_cred* stub2 (struct rpc_auth*,struct auth_cred*,int ) ;
 scalar_t__ stub3 (struct rpc_cred*) ;

bool nfs_ctx_key_to_expire(struct nfs_open_context *ctx, struct inode *inode)
{
 struct rpc_auth *auth = NFS_SERVER(inode)->client->cl_auth;
 struct rpc_cred *cred = ctx->ll_cred;
 struct auth_cred acred = {
  .cred = ctx->cred,
 };

 if (cred && !cred->cr_ops->crmatch(&acred, cred, 0)) {
  put_rpccred(cred);
  ctx->ll_cred = ((void*)0);
  cred = ((void*)0);
 }
 if (!cred)
  cred = auth->au_ops->lookup_cred(auth, &acred, 0);
 if (!cred || IS_ERR(cred))
  return 1;
 ctx->ll_cred = cred;
 return !!(cred->cr_ops->crkey_timeout &&
    cred->cr_ops->crkey_timeout(cred));
}
