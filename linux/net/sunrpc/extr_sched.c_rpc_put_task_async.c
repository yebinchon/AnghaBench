
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_workqueue; } ;


 int rpc_do_put_task (struct rpc_task*,int ) ;

void rpc_put_task_async(struct rpc_task *task)
{
 rpc_do_put_task(task, task->tk_workqueue);
}
