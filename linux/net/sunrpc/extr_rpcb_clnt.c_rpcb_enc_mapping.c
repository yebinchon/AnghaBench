
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpcbind_args {int r_port; int r_prot; int r_vers; int r_prog; } ;
struct rpc_rqst {TYPE_3__* rq_task; } ;
typedef void* __be32 ;
struct TYPE_5__ {TYPE_1__* rpc_proc; } ;
struct TYPE_6__ {TYPE_2__ tk_msg; int tk_pid; } ;
struct TYPE_4__ {int p_name; } ;


 int RPCB_mappingargs_sz ;
 void* cpu_to_be32 (int ) ;
 int dprintk (char*,int ,int ,int ,int ,int ,int ) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void rpcb_enc_mapping(struct rpc_rqst *req, struct xdr_stream *xdr,
        const void *data)
{
 const struct rpcbind_args *rpcb = data;
 __be32 *p;

 dprintk("RPC: %5u encoding PMAP_%s call (%u, %u, %d, %u)\n",
   req->rq_task->tk_pid,
   req->rq_task->tk_msg.rpc_proc->p_name,
   rpcb->r_prog, rpcb->r_vers, rpcb->r_prot, rpcb->r_port);

 p = xdr_reserve_space(xdr, RPCB_mappingargs_sz << 2);
 *p++ = cpu_to_be32(rpcb->r_prog);
 *p++ = cpu_to_be32(rpcb->r_vers);
 *p++ = cpu_to_be32(rpcb->r_prot);
 *p = cpu_to_be32(rpcb->r_port);
}
