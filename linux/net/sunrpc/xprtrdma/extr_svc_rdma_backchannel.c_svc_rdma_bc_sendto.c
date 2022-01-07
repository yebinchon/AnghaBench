
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svcxprt_rdma {int dummy; } ;
struct TYPE_2__ {int opcode; } ;
struct svc_rdma_send_ctxt {TYPE_1__ sc_send_wr; } ;
struct rpc_rqst {int rq_buffer; int rq_snd_buf; } ;


 int EIO ;
 int IB_WR_SEND ;
 int get_page (int ) ;
 int svc_rdma_map_reply_msg (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*,int *,int *) ;
 int svc_rdma_send (struct svcxprt_rdma*,TYPE_1__*) ;
 int virt_to_page (int ) ;

__attribute__((used)) static int svc_rdma_bc_sendto(struct svcxprt_rdma *rdma,
         struct rpc_rqst *rqst,
         struct svc_rdma_send_ctxt *ctxt)
{
 int ret;

 ret = svc_rdma_map_reply_msg(rdma, ctxt, &rqst->rq_snd_buf, ((void*)0));
 if (ret < 0)
  return -EIO;




 get_page(virt_to_page(rqst->rq_buffer));
 ctxt->sc_send_wr.opcode = IB_WR_SEND;
 return svc_rdma_send(rdma, &ctxt->sc_send_wr);
}
