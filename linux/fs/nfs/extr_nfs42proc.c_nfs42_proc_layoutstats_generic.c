
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task_setup {int flags; struct nfs42_layoutstat_data* callback_data; int * callback_ops; struct rpc_message* rpc_message; int rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct TYPE_4__ {int seq_res; } ;
struct TYPE_3__ {int seq_args; int inode; } ;
struct nfs42_layoutstat_data {TYPE_2__ res; TYPE_1__ args; int inode; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 size_t NFSPROC4_CLNT_LAYOUTSTATS ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int nfs42_layoutstat_ops ;
 int nfs42_layoutstat_release (struct nfs42_layoutstat_data*) ;
 int nfs4_init_sequence (int *,int *,int ,int ) ;
 int * nfs4_procedures ;
 int nfs_igrab_and_active (int ) ;
 int rpc_put_task (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;

int nfs42_proc_layoutstats_generic(struct nfs_server *server,
       struct nfs42_layoutstat_data *data)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LAYOUTSTATS],
  .rpc_argp = &data->args,
  .rpc_resp = &data->res,
 };
 struct rpc_task_setup task_setup = {
  .rpc_client = server->client,
  .rpc_message = &msg,
  .callback_ops = &nfs42_layoutstat_ops,
  .callback_data = data,
  .flags = RPC_TASK_ASYNC,
 };
 struct rpc_task *task;

 data->inode = nfs_igrab_and_active(data->args.inode);
 if (!data->inode) {
  nfs42_layoutstat_release(data);
  return -EAGAIN;
 }
 nfs4_init_sequence(&data->args.seq_args, &data->res.seq_res, 0, 0);
 task = rpc_run_task(&task_setup);
 if (IS_ERR(task))
  return PTR_ERR(task);
 rpc_put_task(task);
 return 0;
}
