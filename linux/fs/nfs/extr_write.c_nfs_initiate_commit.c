
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task_setup {int flags; int priority; struct rpc_clnt* rpc_client; int workqueue; struct nfs_commit_data* callback_data; struct rpc_call_ops const* callback_ops; struct rpc_message* rpc_message; int * task; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int rpc_cred; int * rpc_resp; int * rpc_argp; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_call_ops {int dummy; } ;
struct nfs_rpc_ops {int (* commit_setup ) (struct nfs_commit_data*,struct rpc_message*,struct rpc_clnt**) ;} ;
struct nfs_commit_data {int task; int cred; int res; int args; } ;


 int FLUSH_SYNC ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int dprintk (char*) ;
 int flush_task_priority (int) ;
 int nfsiod_workqueue ;
 int rpc_put_task (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int rpc_wait_for_completion_task (struct rpc_task*) ;
 int stub1 (struct nfs_commit_data*,struct rpc_message*,struct rpc_clnt**) ;
 int trace_nfs_initiate_commit (struct nfs_commit_data*) ;

int nfs_initiate_commit(struct rpc_clnt *clnt, struct nfs_commit_data *data,
   const struct nfs_rpc_ops *nfs_ops,
   const struct rpc_call_ops *call_ops,
   int how, int flags)
{
 struct rpc_task *task;
 int priority = flush_task_priority(how);
 struct rpc_message msg = {
  .rpc_argp = &data->args,
  .rpc_resp = &data->res,
  .rpc_cred = data->cred,
 };
 struct rpc_task_setup task_setup_data = {
  .task = &data->task,
  .rpc_client = clnt,
  .rpc_message = &msg,
  .callback_ops = call_ops,
  .callback_data = data,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC | flags,
  .priority = priority,
 };

 nfs_ops->commit_setup(data, &msg, &task_setup_data.rpc_client);
 trace_nfs_initiate_commit(data);

 dprintk("NFS: initiated commit call\n");

 task = rpc_run_task(&task_setup_data);
 if (IS_ERR(task))
  return PTR_ERR(task);
 if (how & FLUSH_SYNC)
  rpc_wait_for_completion_task(task);
 rpc_put_task(task);
 return 0;
}
