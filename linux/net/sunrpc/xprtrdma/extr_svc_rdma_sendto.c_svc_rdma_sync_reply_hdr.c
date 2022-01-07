
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svcxprt_rdma {TYPE_2__* sc_pd; } ;
struct TYPE_4__ {int num_sge; } ;
struct svc_rdma_send_ctxt {TYPE_3__* sc_sges; TYPE_1__ sc_send_wr; } ;
struct TYPE_6__ {unsigned int length; int addr; } ;
struct TYPE_5__ {int device; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_sync_single_for_device (int ,int ,unsigned int,int ) ;

void svc_rdma_sync_reply_hdr(struct svcxprt_rdma *rdma,
        struct svc_rdma_send_ctxt *ctxt,
        unsigned int len)
{
 ctxt->sc_sges[0].length = len;
 ctxt->sc_send_wr.num_sge++;
 ib_dma_sync_single_for_device(rdma->sc_pd->device,
          ctxt->sc_sges[0].addr, len,
          DMA_TO_DEVICE);
}
