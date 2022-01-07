
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int rpc_argp; TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; int tk_rqstp; } ;
typedef int (* kxdreproc_t ) (int ,struct xdr_stream*,int ) ;
struct TYPE_3__ {int (* p_encode ) (int ,struct xdr_stream*,int ) ;} ;



int rpcauth_wrap_req_encode(struct rpc_task *task, struct xdr_stream *xdr)
{
 kxdreproc_t encode = task->tk_msg.rpc_proc->p_encode;

 encode(task->tk_rqstp, xdr, task->tk_msg.rpc_argp);
 return 0;
}
