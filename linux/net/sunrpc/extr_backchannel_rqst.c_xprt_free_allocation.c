
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {TYPE_1__* head; } ;
struct rpc_rqst {struct xdr_buf rq_snd_buf; struct xdr_buf rq_rcv_buf; int rq_bc_pa_state; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 int RPC_BC_PA_IN_USE ;
 int WARN_ON_ONCE (int ) ;
 int dprintk (char*,struct rpc_rqst*) ;
 int free_page (unsigned long) ;
 int kfree (struct rpc_rqst*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void xprt_free_allocation(struct rpc_rqst *req)
{
 struct xdr_buf *xbufp;

 dprintk("RPC:        free allocations for req= %p\n", req);
 WARN_ON_ONCE(test_bit(RPC_BC_PA_IN_USE, &req->rq_bc_pa_state));
 xbufp = &req->rq_rcv_buf;
 free_page((unsigned long)xbufp->head[0].iov_base);
 xbufp = &req->rq_snd_buf;
 free_page((unsigned long)xbufp->head[0].iov_base);
 kfree(req);
}
