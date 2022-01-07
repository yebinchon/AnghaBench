
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svcxprt_rdma {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int opcode; } ;
struct svc_rdma_send_ctxt {TYPE_1__ sc_send_wr; int * sc_xprt_buf; } ;
typedef int __be32 ;


 int IB_WR_SEND ;
 int RPCRDMA_HDRLEN_ERR ;
 int err_chunk ;
 int rdma_error ;
 int svc_rdma_save_io_pages (struct svc_rqst*,struct svc_rdma_send_ctxt*) ;
 int svc_rdma_send (struct svcxprt_rdma*,TYPE_1__*) ;
 int svc_rdma_send_ctxt_put (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*) ;
 int svc_rdma_sync_reply_hdr (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*,int ) ;
 int trace_svcrdma_err_chunk (int ) ;

__attribute__((used)) static int svc_rdma_send_error_msg(struct svcxprt_rdma *rdma,
       struct svc_rdma_send_ctxt *ctxt,
       struct svc_rqst *rqstp)
{
 __be32 *p;
 int ret;

 p = ctxt->sc_xprt_buf;
 trace_svcrdma_err_chunk(*p);
 p += 3;
 *p++ = rdma_error;
 *p = err_chunk;
 svc_rdma_sync_reply_hdr(rdma, ctxt, RPCRDMA_HDRLEN_ERR);

 svc_rdma_save_io_pages(rqstp, ctxt);

 ctxt->sc_send_wr.opcode = IB_WR_SEND;
 ret = svc_rdma_send(rdma, &ctxt->sc_send_wr);
 if (ret) {
  svc_rdma_send_ctxt_put(rdma, ctxt);
  return ret;
 }

 return 0;
}
