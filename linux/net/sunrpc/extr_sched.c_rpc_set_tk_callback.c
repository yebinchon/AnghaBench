
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int * tk_callback; } ;
typedef int * rpc_action ;


 int WARN_ON_ONCE (int ) ;

__attribute__((used)) static void rpc_set_tk_callback(struct rpc_task *task, rpc_action action)
{
 if (action && !WARN_ON_ONCE(task->tk_callback != ((void*)0)))
  task->tk_callback = action;
}
