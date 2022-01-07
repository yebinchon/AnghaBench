
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;


 int RPC_TASK_NULLCREDS ;
 int RPC_TASK_SOFT ;
 int RPC_TASK_SOFTCONN ;
 int rpc_call_sync (struct rpc_clnt*,struct rpc_message*,int) ;
 int rpcproc_null ;

__attribute__((used)) static int rpc_ping(struct rpc_clnt *clnt)
{
 struct rpc_message msg = {
  .rpc_proc = &rpcproc_null,
 };
 int err;
 err = rpc_call_sync(clnt, &msg, RPC_TASK_SOFT | RPC_TASK_SOFTCONN |
       RPC_TASK_NULLCREDS);
 return err;
}
