
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int tk_flags; TYPE_2__* tk_xprt; int tk_rqstp; int tk_timeouts; int tk_pid; struct rpc_clnt* tk_client; } ;
struct rpc_clnt {TYPE_1__* cl_program; scalar_t__ cl_chatty; } ;
struct TYPE_4__ {int servername; } ;
struct TYPE_3__ {int name; } ;


 int EIO ;
 int ETIMEDOUT ;
 int RPC_CALL_MAJORSEEN ;
 scalar_t__ RPC_IS_SOFT (struct rpc_task*) ;
 scalar_t__ RPC_IS_SOFTCONN (struct rpc_task*) ;
 int RPC_TASK_NO_RETRANS_TIMEOUT ;
 int RPC_TASK_TIMEOUT ;
 int __rpc_call_rpcerror (struct rpc_task*,int ,int ) ;
 int dprintk (char*,int ) ;
 int pr_notice_ratelimited (char*,int ,int ) ;
 int rpc_call_rpcerror (struct rpc_task*,int ) ;
 scalar_t__ rpc_check_connected (int ) ;
 int rpc_force_rebind (struct rpc_clnt*) ;
 int rpcauth_invalcred (struct rpc_task*) ;
 scalar_t__ xprt_adjust_timeout (int ) ;

__attribute__((used)) static void
rpc_check_timeout(struct rpc_task *task)
{
 struct rpc_clnt *clnt = task->tk_client;

 if (xprt_adjust_timeout(task->tk_rqstp) == 0)
  return;

 dprintk("RPC: %5u call_timeout (major)\n", task->tk_pid);
 task->tk_timeouts++;

 if (RPC_IS_SOFTCONN(task) && !rpc_check_connected(task->tk_rqstp)) {
  rpc_call_rpcerror(task, -ETIMEDOUT);
  return;
 }

 if (RPC_IS_SOFT(task)) {





  if ((task->tk_flags & RPC_TASK_NO_RETRANS_TIMEOUT) &&
      rpc_check_connected(task->tk_rqstp))
   return;

  if (clnt->cl_chatty) {
   pr_notice_ratelimited(
    "%s: server %s not responding, timed out\n",
    clnt->cl_program->name,
    task->tk_xprt->servername);
  }
  if (task->tk_flags & RPC_TASK_TIMEOUT)
   rpc_call_rpcerror(task, -ETIMEDOUT);
  else
   __rpc_call_rpcerror(task, -EIO, -ETIMEDOUT);
  return;
 }

 if (!(task->tk_flags & RPC_CALL_MAJORSEEN)) {
  task->tk_flags |= RPC_CALL_MAJORSEEN;
  if (clnt->cl_chatty) {
   pr_notice_ratelimited(
    "%s: server %s not responding, still trying\n",
    clnt->cl_program->name,
    task->tk_xprt->servername);
  }
 }
 rpc_force_rebind(clnt);




 rpcauth_invalcred(task);
}
