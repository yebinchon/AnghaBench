
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int rpcb_is_af_local; } ;
struct rpc_message {int* rpc_resp; } ;
struct rpc_clnt {int dummy; } ;


 int EACCES ;
 int RPC_TASK_NOCONNECT ;
 int RPC_TASK_SOFTCONN ;
 int dprintk (char*,int) ;
 int rpc_call_sync (struct rpc_clnt*,struct rpc_message*,int) ;

__attribute__((used)) static int rpcb_register_call(struct sunrpc_net *sn, struct rpc_clnt *clnt, struct rpc_message *msg, bool is_set)
{
 int flags = RPC_TASK_NOCONNECT;
 int error, result = 0;

 if (is_set || !sn->rpcb_is_af_local)
  flags = RPC_TASK_SOFTCONN;
 msg->rpc_resp = &result;

 error = rpc_call_sync(clnt, msg, flags);
 if (error < 0) {
  dprintk("RPC:       failed to contact local rpcbind "
    "server (errno %d).\n", -error);
  return error;
 }

 if (!result)
  return -EACCES;
 return 0;
}
