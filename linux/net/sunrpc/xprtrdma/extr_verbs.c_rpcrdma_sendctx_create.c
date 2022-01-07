
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; } ;
struct TYPE_4__ {int opcode; int sg_list; TYPE_1__* wr_cqe; } ;
struct rpcrdma_sendctx {TYPE_1__ sc_cqe; TYPE_2__ sc_wr; int sc_sges; } ;
struct rpcrdma_ia {int ri_max_send_sges; } ;


 int GFP_KERNEL ;
 int IB_WR_SEND ;
 struct rpcrdma_sendctx* kzalloc (int ,int ) ;
 int rpcrdma_wc_send ;
 int sc_sges ;
 int struct_size (struct rpcrdma_sendctx*,int ,int ) ;

__attribute__((used)) static struct rpcrdma_sendctx *rpcrdma_sendctx_create(struct rpcrdma_ia *ia)
{
 struct rpcrdma_sendctx *sc;

 sc = kzalloc(struct_size(sc, sc_sges, ia->ri_max_send_sges),
       GFP_KERNEL);
 if (!sc)
  return ((void*)0);

 sc->sc_wr.wr_cqe = &sc->sc_cqe;
 sc->sc_wr.sg_list = sc->sc_sges;
 sc->sc_wr.opcode = IB_WR_SEND;
 sc->sc_cqe.done = rpcrdma_wc_send;
 return sc;
}
