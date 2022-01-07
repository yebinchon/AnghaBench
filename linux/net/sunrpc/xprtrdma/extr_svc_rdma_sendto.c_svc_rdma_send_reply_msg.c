
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svcxprt_rdma {int dummy; } ;
struct svc_rqst {int rq_res; } ;
struct TYPE_3__ {scalar_t__ invalidate_rkey; } ;
struct TYPE_4__ {int num_sge; int opcode; TYPE_1__ ex; } ;
struct svc_rdma_send_ctxt {TYPE_2__ sc_send_wr; } ;
struct svc_rdma_recv_ctxt {scalar_t__ rc_inv_rkey; } ;
typedef int __be32 ;


 int IB_WR_SEND ;
 int IB_WR_SEND_WITH_INV ;
 int dprintk (char*,int ) ;
 int svc_rdma_map_reply_msg (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*,int *,int *) ;
 int svc_rdma_save_io_pages (struct svc_rqst*,struct svc_rdma_send_ctxt*) ;
 int svc_rdma_send (struct svcxprt_rdma*,TYPE_2__*) ;

__attribute__((used)) static int svc_rdma_send_reply_msg(struct svcxprt_rdma *rdma,
       struct svc_rdma_send_ctxt *sctxt,
       struct svc_rdma_recv_ctxt *rctxt,
       struct svc_rqst *rqstp,
       __be32 *wr_lst, __be32 *rp_ch)
{
 int ret;

 if (!rp_ch) {
  ret = svc_rdma_map_reply_msg(rdma, sctxt,
          &rqstp->rq_res, wr_lst);
  if (ret < 0)
   return ret;
 }

 svc_rdma_save_io_pages(rqstp, sctxt);

 if (rctxt->rc_inv_rkey) {
  sctxt->sc_send_wr.opcode = IB_WR_SEND_WITH_INV;
  sctxt->sc_send_wr.ex.invalidate_rkey = rctxt->rc_inv_rkey;
 } else {
  sctxt->sc_send_wr.opcode = IB_WR_SEND;
 }
 dprintk("svcrdma: posting Send WR with %u sge(s)\n",
  sctxt->sc_send_wr.num_sge);
 return svc_rdma_send(rdma, &sctxt->sc_send_wr);
}
