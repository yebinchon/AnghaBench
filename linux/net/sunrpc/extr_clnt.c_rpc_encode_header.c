
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; struct rpc_rqst* tk_rqstp; struct rpc_clnt* tk_client; } ;
struct rpc_rqst {int rq_xid; } ;
struct rpc_clnt {int cl_vers; int cl_prog; } ;
typedef void* __be32 ;
struct TYPE_3__ {int p_proc; } ;


 int EMSGSIZE ;
 int RPC_CALLHDRSIZE ;
 int RPC_VERSION ;
 void* cpu_to_be32 (int ) ;
 int rpc_call ;
 int rpc_call_rpcerror (struct rpc_task*,int) ;
 int rpcauth_marshcred (struct rpc_task*,struct xdr_stream*) ;
 int trace_rpc_bad_callhdr (struct rpc_task*) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int
rpc_encode_header(struct rpc_task *task, struct xdr_stream *xdr)
{
 struct rpc_clnt *clnt = task->tk_client;
 struct rpc_rqst *req = task->tk_rqstp;
 __be32 *p;
 int error;

 error = -EMSGSIZE;
 p = xdr_reserve_space(xdr, RPC_CALLHDRSIZE << 2);
 if (!p)
  goto out_fail;
 *p++ = req->rq_xid;
 *p++ = rpc_call;
 *p++ = cpu_to_be32(RPC_VERSION);
 *p++ = cpu_to_be32(clnt->cl_prog);
 *p++ = cpu_to_be32(clnt->cl_vers);
 *p = cpu_to_be32(task->tk_msg.rpc_proc->p_proc);

 error = rpcauth_marshcred(task, xdr);
 if (error < 0)
  goto out_fail;
 return 0;
out_fail:
 trace_rpc_bad_callhdr(task);
 rpc_call_rpcerror(task, error);
 return error;
}
