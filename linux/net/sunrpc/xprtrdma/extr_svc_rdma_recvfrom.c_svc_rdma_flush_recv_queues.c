
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_rq_dto_q; int sc_read_complete_q; } ;
struct svc_rdma_recv_ctxt {int rc_list; } ;


 int list_del (int *) ;
 struct svc_rdma_recv_ctxt* svc_rdma_next_recv_ctxt (int *) ;
 int svc_rdma_recv_ctxt_put (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ;

void svc_rdma_flush_recv_queues(struct svcxprt_rdma *rdma)
{
 struct svc_rdma_recv_ctxt *ctxt;

 while ((ctxt = svc_rdma_next_recv_ctxt(&rdma->sc_read_complete_q))) {
  list_del(&ctxt->rc_list);
  svc_rdma_recv_ctxt_put(rdma, ctxt);
 }
 while ((ctxt = svc_rdma_next_recv_ctxt(&rdma->sc_rq_dto_q))) {
  list_del(&ctxt->rc_list);
  svc_rdma_recv_ctxt_put(rdma, ctxt);
 }
}
