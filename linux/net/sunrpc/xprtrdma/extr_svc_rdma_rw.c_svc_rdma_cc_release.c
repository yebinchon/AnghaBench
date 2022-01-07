
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svcxprt_rdma {int sc_xprt; int sc_port_num; int sc_qp; } ;
struct TYPE_2__ {int sgl; } ;
struct svc_rdma_rw_ctxt {int rw_nents; TYPE_1__ rw_sg_table; int rw_ctx; int rw_list; } ;
struct svc_rdma_chunk_ctxt {int cc_rwctxts; struct svcxprt_rdma* cc_rdma; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int list_del (int *) ;
 int rdma_rw_ctx_destroy (int *,int ,int ,int ,int ,int) ;
 struct svc_rdma_rw_ctxt* svc_rdma_next_ctxt (int *) ;
 int svc_rdma_put_rw_ctxt (struct svcxprt_rdma*,struct svc_rdma_rw_ctxt*) ;
 int svc_xprt_put (int *) ;

__attribute__((used)) static void svc_rdma_cc_release(struct svc_rdma_chunk_ctxt *cc,
    enum dma_data_direction dir)
{
 struct svcxprt_rdma *rdma = cc->cc_rdma;
 struct svc_rdma_rw_ctxt *ctxt;

 while ((ctxt = svc_rdma_next_ctxt(&cc->cc_rwctxts)) != ((void*)0)) {
  list_del(&ctxt->rw_list);

  rdma_rw_ctx_destroy(&ctxt->rw_ctx, rdma->sc_qp,
        rdma->sc_port_num, ctxt->rw_sg_table.sgl,
        ctxt->rw_nents, dir);
  svc_rdma_put_rw_ctxt(rdma, ctxt);
 }
 svc_xprt_put(&rdma->sc_xprt);
}
