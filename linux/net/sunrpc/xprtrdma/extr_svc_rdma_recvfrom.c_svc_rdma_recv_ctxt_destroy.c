
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svcxprt_rdma {TYPE_1__* sc_pd; } ;
struct TYPE_4__ {int length; int addr; } ;
struct svc_rdma_recv_ctxt {struct svc_rdma_recv_ctxt* rc_recv_buf; TYPE_2__ rc_recv_sge; } ;
struct TYPE_3__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (struct svc_rdma_recv_ctxt*) ;

__attribute__((used)) static void svc_rdma_recv_ctxt_destroy(struct svcxprt_rdma *rdma,
           struct svc_rdma_recv_ctxt *ctxt)
{
 ib_dma_unmap_single(rdma->sc_pd->device, ctxt->rc_recv_sge.addr,
       ctxt->rc_recv_sge.length, DMA_FROM_DEVICE);
 kfree(ctxt->rc_recv_buf);
 kfree(ctxt);
}
