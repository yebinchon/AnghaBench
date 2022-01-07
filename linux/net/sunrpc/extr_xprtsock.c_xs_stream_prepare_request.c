
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_rqst {int rq_rcv_buf; TYPE_1__* rq_task; } ;
struct TYPE_2__ {int tk_status; } ;


 int GFP_KERNEL ;
 int xdr_alloc_bvec (int *,int ) ;
 int xdr_free_bvec (int *) ;

__attribute__((used)) static void
xs_stream_prepare_request(struct rpc_rqst *req)
{
 xdr_free_bvec(&req->rq_rcv_buf);
 req->rq_task->tk_status = xdr_alloc_bvec(&req->rq_rcv_buf, GFP_KERNEL);
}
