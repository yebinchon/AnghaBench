
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int tk_calldata; TYPE_1__* tk_ops; } ;
struct TYPE_2__ {int (* rpc_call_prepare ) (struct rpc_task*,int ) ;} ;


 int stub1 (struct rpc_task*,int ) ;

void rpc_prepare_task(struct rpc_task *task)
{
 task->tk_ops->rpc_call_prepare(task, task->tk_calldata);
}
