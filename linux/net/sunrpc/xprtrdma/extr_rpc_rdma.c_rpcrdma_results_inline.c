
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rep_max_inline_recv; } ;
struct rpcrdma_xprt {TYPE_2__ rx_ep; } ;
struct TYPE_3__ {scalar_t__ buflen; } ;
struct rpc_rqst {TYPE_1__ rq_rcv_buf; } ;



__attribute__((used)) static bool rpcrdma_results_inline(struct rpcrdma_xprt *r_xprt,
       struct rpc_rqst *rqst)
{
 return rqst->rq_rcv_buf.buflen <= r_xprt->rx_ep.rep_max_inline_recv;
}
