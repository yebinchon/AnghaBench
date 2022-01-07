
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {void (* tk_action ) (struct rpc_task*) ;scalar_t__ tk_rpc_status; scalar_t__ tk_status; } ;



__attribute__((used)) static int
__rpc_restart_call(struct rpc_task *task, void (*action)(struct rpc_task *))
{
 task->tk_status = 0;
 task->tk_rpc_status = 0;
 task->tk_action = action;
 return 1;
}
