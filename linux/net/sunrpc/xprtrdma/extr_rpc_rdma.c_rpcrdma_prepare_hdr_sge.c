
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rpcrdma_xprt {int dummy; } ;
struct TYPE_2__ {int num_sge; } ;
struct rpcrdma_sendctx {TYPE_1__ sc_wr; struct ib_sge* sc_sges; } ;
struct rpcrdma_req {struct rpcrdma_regbuf* rl_rdmabuf; struct rpcrdma_sendctx* rl_sendctx; } ;
struct rpcrdma_regbuf {int dummy; } ;
struct ib_sge {int length; int addr; int lkey; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int pr_err (char*) ;
 int rdmab_addr (struct rpcrdma_regbuf*) ;
 int rdmab_device (struct rpcrdma_regbuf*) ;
 int rdmab_lkey (struct rpcrdma_regbuf*) ;
 int rpcrdma_regbuf_dma_map (struct rpcrdma_xprt*,struct rpcrdma_regbuf*) ;

__attribute__((used)) static bool rpcrdma_prepare_hdr_sge(struct rpcrdma_xprt *r_xprt,
        struct rpcrdma_req *req, u32 len)
{
 struct rpcrdma_sendctx *sc = req->rl_sendctx;
 struct rpcrdma_regbuf *rb = req->rl_rdmabuf;
 struct ib_sge *sge = sc->sc_sges;

 if (!rpcrdma_regbuf_dma_map(r_xprt, rb))
  goto out_regbuf;
 sge->addr = rdmab_addr(rb);
 sge->length = len;
 sge->lkey = rdmab_lkey(rb);

 ib_dma_sync_single_for_device(rdmab_device(rb), sge->addr, sge->length,
          DMA_TO_DEVICE);
 sc->sc_wr.num_sge++;
 return 1;

out_regbuf:
 pr_err("rpcrdma: failed to DMA map a Send buffer\n");
 return 0;
}
