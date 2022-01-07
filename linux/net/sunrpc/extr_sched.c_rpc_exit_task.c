
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int * tk_action; int tk_calldata; TYPE_2__* tk_ops; TYPE_1__* tk_client; } ;
struct TYPE_4__ {int (* rpc_call_done ) (struct rpc_task*,int ) ;int (* rpc_count_stats ) (struct rpc_task*,int ) ;} ;
struct TYPE_3__ {int cl_metrics; } ;


 int rpc_count_iostats (struct rpc_task*,int ) ;
 int rpc_reset_task_statistics (struct rpc_task*) ;
 int stub1 (struct rpc_task*,int ) ;
 int stub2 (struct rpc_task*,int ) ;
 int xprt_release (struct rpc_task*) ;

void rpc_exit_task(struct rpc_task *task)
{
 task->tk_action = ((void*)0);
 if (task->tk_ops->rpc_count_stats)
  task->tk_ops->rpc_count_stats(task, task->tk_calldata);
 else if (task->tk_client)
  rpc_count_iostats(task, task->tk_client->cl_metrics);
 if (task->tk_ops->rpc_call_done != ((void*)0)) {
  task->tk_ops->rpc_call_done(task, task->tk_calldata);
  if (task->tk_action != ((void*)0)) {

   xprt_release(task);
   rpc_reset_task_statistics(task);
  }
 }
}
