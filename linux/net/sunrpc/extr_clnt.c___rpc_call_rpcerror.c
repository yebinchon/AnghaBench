
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_rpc_status; } ;


 int rpc_exit (struct rpc_task*,int) ;

__attribute__((used)) static void
__rpc_call_rpcerror(struct rpc_task *task, int tk_status, int rpc_status)
{
 task->tk_rpc_status = rpc_status;
 rpc_exit(task, tk_status);
}
