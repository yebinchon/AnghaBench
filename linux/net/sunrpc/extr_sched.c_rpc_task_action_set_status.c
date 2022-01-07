
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; } ;



__attribute__((used)) static bool rpc_task_action_set_status(struct rpc_task *task, void *status)
{
 task->tk_status = *(int *)status;
 return 1;
}
