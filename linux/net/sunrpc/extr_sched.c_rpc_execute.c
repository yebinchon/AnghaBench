
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int RPC_IS_ASYNC (struct rpc_task*) ;
 int __rpc_execute (struct rpc_task*) ;
 int rpc_make_runnable (int ,struct rpc_task*) ;
 int rpc_set_active (struct rpc_task*) ;
 int rpciod_workqueue ;

void rpc_execute(struct rpc_task *task)
{
 bool is_async = RPC_IS_ASYNC(task);

 rpc_set_active(task);
 rpc_make_runnable(rpciod_workqueue, task);
 if (!is_async)
  __rpc_execute(task);
}
