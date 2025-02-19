
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_flags; scalar_t__ tk_xprt; } ;
struct rpc_clnt {int dummy; } ;


 int RPC_TASK_NO_ROUND_ROBIN ;
 scalar_t__ rpc_task_get_first_xprt (struct rpc_clnt*) ;
 scalar_t__ rpc_task_get_next_xprt (struct rpc_clnt*) ;

__attribute__((used)) static
void rpc_task_set_transport(struct rpc_task *task, struct rpc_clnt *clnt)
{
 if (task->tk_xprt)
  return;
 if (task->tk_flags & RPC_TASK_NO_ROUND_ROBIN)
  task->tk_xprt = rpc_task_get_first_xprt(clnt);
 else
  task->tk_xprt = rpc_task_get_next_xprt(clnt);
}
