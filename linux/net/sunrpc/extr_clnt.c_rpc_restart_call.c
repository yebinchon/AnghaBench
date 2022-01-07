
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int __rpc_restart_call (struct rpc_task*,int ) ;
 int call_start ;

int
rpc_restart_call(struct rpc_task *task)
{
 return __rpc_restart_call(task, call_start);
}
