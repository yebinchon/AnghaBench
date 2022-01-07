
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rpc_task_setup {struct rpc_clnt* rpc_client; int flags; struct nlm_rqst* callback_data; struct rpc_call_ops const* callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int * rpc_proc; } ;
struct rpc_clnt {int * cl_procinfo; } ;
struct rpc_call_ops {int (* rpc_release ) (struct nlm_rqst*) ;} ;
struct nlm_rqst {struct nlm_host* a_host; } ;
struct nlm_host {int h_name; } ;


 int ENOLCK ;
 struct rpc_task* ERR_PTR (int ) ;
 int RPC_TASK_ASYNC ;
 int dprintk (char*,int,int ) ;
 struct rpc_clnt* nlm_bind_host (struct nlm_host*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int stub1 (struct nlm_rqst*) ;

__attribute__((used)) static struct rpc_task *__nlm_async_call(struct nlm_rqst *req, u32 proc, struct rpc_message *msg, const struct rpc_call_ops *tk_ops)
{
 struct nlm_host *host = req->a_host;
 struct rpc_clnt *clnt;
 struct rpc_task_setup task_setup_data = {
  .rpc_message = msg,
  .callback_ops = tk_ops,
  .callback_data = req,
  .flags = RPC_TASK_ASYNC,
 };

 dprintk("lockd: call procedure %d on %s (async)\n",
   (int)proc, host->h_name);


 clnt = nlm_bind_host(host);
 if (clnt == ((void*)0))
  goto out_err;
 msg->rpc_proc = &clnt->cl_procinfo[proc];
 task_setup_data.rpc_client = clnt;


 return rpc_run_task(&task_setup_data);
out_err:
 tk_ops->rpc_release(req);
 return ERR_PTR(-ENOLCK);
}
