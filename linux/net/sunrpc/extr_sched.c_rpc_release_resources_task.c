
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rpc_cred; } ;
struct rpc_task {TYPE_1__ tk_msg; } ;


 int put_cred (int *) ;
 int rpc_task_release_client (struct rpc_task*) ;
 int xprt_release (struct rpc_task*) ;

__attribute__((used)) static void rpc_release_resources_task(struct rpc_task *task)
{
 xprt_release(task);
 if (task->tk_msg.rpc_cred) {
  put_cred(task->tk_msg.rpc_cred);
  task->tk_msg.rpc_cred = ((void*)0);
 }
 rpc_task_release_client(task);
}
