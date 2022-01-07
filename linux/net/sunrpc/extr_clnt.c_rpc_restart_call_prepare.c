
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_ops; } ;
struct TYPE_2__ {int * rpc_call_prepare; } ;


 int __rpc_restart_call (struct rpc_task*,int ) ;
 int rpc_prepare_task ;
 int rpc_restart_call (struct rpc_task*) ;

int
rpc_restart_call_prepare(struct rpc_task *task)
{
 if (task->tk_ops->rpc_call_prepare != ((void*)0))
  return __rpc_restart_call(task, rpc_prepare_task);
 return rpc_restart_call(task);
}
