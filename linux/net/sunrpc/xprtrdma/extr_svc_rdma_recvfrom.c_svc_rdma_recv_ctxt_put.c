
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_recv_ctxts; } ;
struct svc_rdma_recv_ctxt {unsigned int rc_page_count; int rc_node; int rc_temp; int * rc_pages; } ;


 int llist_add (int *,int *) ;
 int put_page (int ) ;
 int svc_rdma_recv_ctxt_destroy (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ;

void svc_rdma_recv_ctxt_put(struct svcxprt_rdma *rdma,
       struct svc_rdma_recv_ctxt *ctxt)
{
 unsigned int i;

 for (i = 0; i < ctxt->rc_page_count; i++)
  put_page(ctxt->rc_pages[i]);

 if (!ctxt->rc_temp)
  llist_add(&ctxt->rc_node, &rdma->sc_recv_ctxts);
 else
  svc_rdma_recv_ctxt_destroy(rdma, ctxt);
}
