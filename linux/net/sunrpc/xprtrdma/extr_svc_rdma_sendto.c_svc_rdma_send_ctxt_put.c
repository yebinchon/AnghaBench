
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svcxprt_rdma {int sc_send_lock; int sc_send_ctxts; TYPE_1__* sc_cm_id; } ;
struct TYPE_5__ {unsigned int num_sge; } ;
struct svc_rdma_send_ctxt {unsigned int sc_page_count; int sc_list; int * sc_pages; TYPE_3__* sc_sges; TYPE_2__ sc_send_wr; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {int length; int addr; } ;
struct TYPE_4__ {struct ib_device* device; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_page (struct ib_device*,int ,int ,int ) ;
 int list_add (int *,int *) ;
 int put_page (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void svc_rdma_send_ctxt_put(struct svcxprt_rdma *rdma,
       struct svc_rdma_send_ctxt *ctxt)
{
 struct ib_device *device = rdma->sc_cm_id->device;
 unsigned int i;




 for (i = 1; i < ctxt->sc_send_wr.num_sge; i++)
  ib_dma_unmap_page(device,
      ctxt->sc_sges[i].addr,
      ctxt->sc_sges[i].length,
      DMA_TO_DEVICE);

 for (i = 0; i < ctxt->sc_page_count; ++i)
  put_page(ctxt->sc_pages[i]);

 spin_lock(&rdma->sc_send_lock);
 list_add(&ctxt->sc_list, &rdma->sc_send_ctxts);
 spin_unlock(&rdma->sc_send_lock);
}
