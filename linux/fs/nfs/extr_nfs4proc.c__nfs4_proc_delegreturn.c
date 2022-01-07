
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rpc_task_setup {struct nfs4_delegreturndata* callback_data; int rpc_client; int flags; int * callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; struct cred const* rpc_cred; int * rpc_proc; } ;
struct nfs_server {int cache_consistency_bitmask; int nfs_client; int client; } ;
struct TYPE_8__ {int * lr_res; int * fattr; int lr_ret; struct nfs_server* server; int seq_res; } ;
struct TYPE_7__ {TYPE_4__* lr_args; int bitmask; int * stateid; int * fhandle; int seq_args; } ;
struct TYPE_9__ {int * ld_private; } ;
struct TYPE_6__ {int roc; int res; TYPE_4__ arg; int ld_private; } ;
struct nfs4_delegreturndata {int rpc_status; TYPE_3__ res; TYPE_2__ args; TYPE_1__ lr; scalar_t__ inode; int timestamp; int fattr; int stateid; int fh; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
typedef int nfs4_stateid ;


 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 int NFS4ERR_NOMATCHING_LAYOUT ;
 size_t NFSPROC4_CLNT_DELEGRETURN ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int NFS_SP4_MACH_CRED_CLEANUP ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int jiffies ;
 struct nfs4_delegreturndata* kzalloc (int,int ) ;
 int nfs4_delegreturn_ops ;
 int nfs4_init_sequence (int *,int *,int,int ) ;
 int * nfs4_procedures ;
 int nfs4_state_protect (int ,int ,int *,struct rpc_message*) ;
 int nfs4_stateid_copy (int *,int const*) ;
 int nfs_copy_fh (int *,int ) ;
 int nfs_fattr_init (int *) ;
 scalar_t__ nfs_igrab_and_active (struct inode*) ;
 int pnfs_roc (struct inode*,TYPE_4__*,int *,struct cred const*) ;
 int pnfs_roc_release (TYPE_4__*,int *,int ) ;
 int rpc_put_task (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int rpc_wait_for_completion_task (struct rpc_task*) ;

__attribute__((used)) static int _nfs4_proc_delegreturn(struct inode *inode, const struct cred *cred, const nfs4_stateid *stateid, int issync)
{
 struct nfs4_delegreturndata *data;
 struct nfs_server *server = NFS_SERVER(inode);
 struct rpc_task *task;
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_DELEGRETURN],
  .rpc_cred = cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_client = server->client,
  .rpc_message = &msg,
  .callback_ops = &nfs4_delegreturn_ops,
  .flags = RPC_TASK_ASYNC,
 };
 int status = 0;

 data = kzalloc(sizeof(*data), GFP_NOFS);
 if (data == ((void*)0))
  return -ENOMEM;
 nfs4_init_sequence(&data->args.seq_args, &data->res.seq_res, 1, 0);

 nfs4_state_protect(server->nfs_client,
   NFS_SP4_MACH_CRED_CLEANUP,
   &task_setup_data.rpc_client, &msg);

 data->args.fhandle = &data->fh;
 data->args.stateid = &data->stateid;
 data->args.bitmask = server->cache_consistency_bitmask;
 nfs_copy_fh(&data->fh, NFS_FH(inode));
 nfs4_stateid_copy(&data->stateid, stateid);
 data->res.fattr = &data->fattr;
 data->res.server = server;
 data->res.lr_ret = -NFS4ERR_NOMATCHING_LAYOUT;
 data->lr.arg.ld_private = &data->lr.ld_private;
 nfs_fattr_init(data->res.fattr);
 data->timestamp = jiffies;
 data->rpc_status = 0;
 data->lr.roc = pnfs_roc(inode, &data->lr.arg, &data->lr.res, cred);
 data->inode = nfs_igrab_and_active(inode);
 if (data->inode) {
  if (data->lr.roc) {
   data->args.lr_args = &data->lr.arg;
   data->res.lr_res = &data->lr.res;
  }
 } else if (data->lr.roc) {
  pnfs_roc_release(&data->lr.arg, &data->lr.res, 0);
  data->lr.roc = 0;
 }

 task_setup_data.callback_data = data;
 msg.rpc_argp = &data->args;
 msg.rpc_resp = &data->res;
 task = rpc_run_task(&task_setup_data);
 if (IS_ERR(task))
  return PTR_ERR(task);
 if (!issync)
  goto out;
 status = rpc_wait_for_completion_task(task);
 if (status != 0)
  goto out;
 status = data->rpc_status;
out:
 rpc_put_task(task);
 return status;
}
