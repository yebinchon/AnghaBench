
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task_setup {struct nfs42_offloadcancel_data* callback_data; int flags; int workqueue; int * callback_ops; struct rpc_message* rpc_message; int rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; int rpc_cred; int * rpc_proc; } ;
struct nfs_server {int caps; int client; } ;
struct nfs_open_context {int cred; } ;
struct TYPE_4__ {int osr_seq_res; } ;
struct TYPE_3__ {int osa_seq_args; int osa_stateid; int osa_src_fh; } ;
struct nfs42_offloadcancel_data {TYPE_2__ res; TYPE_1__ args; struct nfs_server* seq_server; } ;
struct file {int dummy; } ;
typedef int nfs4_stateid ;


 int ENOMEM ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 size_t NFSPROC4_CLNT_OFFLOAD_CANCEL ;
 int NFS_CAP_OFFLOAD_CANCEL ;
 int NFS_FH (int ) ;
 struct nfs_server* NFS_SERVER (int ) ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int file_inode (struct file*) ;
 struct nfs42_offloadcancel_data* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int nfs42_offload_cancel_ops ;
 int nfs4_init_sequence (int *,int *,int,int ) ;
 int * nfs4_procedures ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 int nfsiod_workqueue ;
 int rpc_put_task (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int rpc_wait_for_completion_task (struct rpc_task*) ;

__attribute__((used)) static int nfs42_do_offload_cancel_async(struct file *dst,
      nfs4_stateid *stateid)
{
 struct nfs_server *dst_server = NFS_SERVER(file_inode(dst));
 struct nfs42_offloadcancel_data *data = ((void*)0);
 struct nfs_open_context *ctx = nfs_file_open_context(dst);
 struct rpc_task *task;
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OFFLOAD_CANCEL],
  .rpc_cred = ctx->cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_client = dst_server->client,
  .rpc_message = &msg,
  .callback_ops = &nfs42_offload_cancel_ops,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC,
 };
 int status;

 if (!(dst_server->caps & NFS_CAP_OFFLOAD_CANCEL))
  return -EOPNOTSUPP;

 data = kzalloc(sizeof(struct nfs42_offloadcancel_data), GFP_NOFS);
 if (data == ((void*)0))
  return -ENOMEM;

 data->seq_server = dst_server;
 data->args.osa_src_fh = NFS_FH(file_inode(dst));
 memcpy(&data->args.osa_stateid, stateid,
  sizeof(data->args.osa_stateid));
 msg.rpc_argp = &data->args;
 msg.rpc_resp = &data->res;
 task_setup_data.callback_data = data;
 nfs4_init_sequence(&data->args.osa_seq_args, &data->res.osr_seq_res,
      1, 0);
 task = rpc_run_task(&task_setup_data);
 if (IS_ERR(task))
  return PTR_ERR(task);
 status = rpc_wait_for_completion_task(task);
 if (status == -ENOTSUPP)
  dst_server->caps &= ~NFS_CAP_OFFLOAD_CANCEL;
 rpc_put_task(task);
 return status;
}
