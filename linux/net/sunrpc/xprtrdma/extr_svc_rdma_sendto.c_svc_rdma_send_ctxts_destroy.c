
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svcxprt_rdma {int sc_max_req_size; TYPE_1__* sc_pd; int sc_send_ctxts; } ;
struct svc_rdma_send_ctxt {struct svc_rdma_send_ctxt* sc_xprt_buf; TYPE_2__* sc_sges; int sc_list; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int device; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (struct svc_rdma_send_ctxt*) ;
 int list_del (int *) ;
 struct svc_rdma_send_ctxt* svc_rdma_next_send_ctxt (int *) ;

void svc_rdma_send_ctxts_destroy(struct svcxprt_rdma *rdma)
{
 struct svc_rdma_send_ctxt *ctxt;

 while ((ctxt = svc_rdma_next_send_ctxt(&rdma->sc_send_ctxts))) {
  list_del(&ctxt->sc_list);
  ib_dma_unmap_single(rdma->sc_pd->device,
        ctxt->sc_sges[0].addr,
        rdma->sc_max_req_size,
        DMA_TO_DEVICE);
  kfree(ctxt->sc_xprt_buf);
  kfree(ctxt);
 }
}
