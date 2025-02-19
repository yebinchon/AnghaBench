
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svcxprt_rdma {TYPE_3__* sc_cm_id; } ;
struct TYPE_5__ {int num_sge; } ;
struct svc_rdma_send_ctxt {size_t sc_cur_sge_no; TYPE_2__ sc_send_wr; TYPE_1__* sc_sges; } ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {struct ib_device* device; } ;
struct TYPE_4__ {unsigned int length; int addr; } ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int ib_dma_map_page (struct ib_device*,struct page*,unsigned long,unsigned int,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int ) ;
 int trace_svcrdma_dma_map_page (struct svcxprt_rdma*,struct page*) ;

__attribute__((used)) static int svc_rdma_dma_map_page(struct svcxprt_rdma *rdma,
     struct svc_rdma_send_ctxt *ctxt,
     struct page *page,
     unsigned long offset,
     unsigned int len)
{
 struct ib_device *dev = rdma->sc_cm_id->device;
 dma_addr_t dma_addr;

 dma_addr = ib_dma_map_page(dev, page, offset, len, DMA_TO_DEVICE);
 if (ib_dma_mapping_error(dev, dma_addr))
  goto out_maperr;

 ctxt->sc_sges[ctxt->sc_cur_sge_no].addr = dma_addr;
 ctxt->sc_sges[ctxt->sc_cur_sge_no].length = len;
 ctxt->sc_send_wr.num_sge++;
 return 0;

out_maperr:
 trace_svcrdma_dma_map_page(rdma, page);
 return -EIO;
}
