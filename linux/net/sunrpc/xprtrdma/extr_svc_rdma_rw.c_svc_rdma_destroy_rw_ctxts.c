
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_rw_ctxts; } ;
struct svc_rdma_rw_ctxt {int rw_list; } ;


 int kfree (struct svc_rdma_rw_ctxt*) ;
 int list_del (int *) ;
 struct svc_rdma_rw_ctxt* svc_rdma_next_ctxt (int *) ;

void svc_rdma_destroy_rw_ctxts(struct svcxprt_rdma *rdma)
{
 struct svc_rdma_rw_ctxt *ctxt;

 while ((ctxt = svc_rdma_next_ctxt(&rdma->sc_rw_ctxts)) != ((void*)0)) {
  list_del(&ctxt->rw_list);
  kfree(ctxt);
 }
}
