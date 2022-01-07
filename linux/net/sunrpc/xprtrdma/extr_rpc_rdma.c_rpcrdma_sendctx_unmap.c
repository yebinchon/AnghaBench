
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_sendctx {TYPE_1__* sc_req; int sc_device; scalar_t__ sc_unmap_count; struct ib_sge* sc_sges; } ;
struct ib_sge {int length; int addr; } ;
struct TYPE_2__ {int rl_kref; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_page (int ,int ,int ,int ) ;
 int kref_put (int *,int ) ;
 int rpcrdma_sendctx_done ;

void rpcrdma_sendctx_unmap(struct rpcrdma_sendctx *sc)
{
 struct ib_sge *sge;

 if (!sc->sc_unmap_count)
  return;





 for (sge = &sc->sc_sges[2]; sc->sc_unmap_count;
      ++sge, --sc->sc_unmap_count)
  ib_dma_unmap_page(sc->sc_device, sge->addr, sge->length,
      DMA_TO_DEVICE);

 kref_put(&sc->sc_req->rl_kref, rpcrdma_sendctx_done);
}
