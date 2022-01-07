
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int __rpc_call_rpcerror (struct rpc_task*,int,int) ;

__attribute__((used)) static void
rpc_call_rpcerror(struct rpc_task *task, int status)
{
 __rpc_call_rpcerror(task, status, status);
}
