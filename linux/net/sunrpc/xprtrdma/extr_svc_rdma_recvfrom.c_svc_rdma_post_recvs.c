
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {unsigned int sc_max_requests; } ;
struct svc_rdma_recv_ctxt {int rc_temp; } ;


 int __svc_rdma_post_recv (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ;
 struct svc_rdma_recv_ctxt* svc_rdma_recv_ctxt_get (struct svcxprt_rdma*) ;

bool svc_rdma_post_recvs(struct svcxprt_rdma *rdma)
{
 struct svc_rdma_recv_ctxt *ctxt;
 unsigned int i;
 int ret;

 for (i = 0; i < rdma->sc_max_requests; i++) {
  ctxt = svc_rdma_recv_ctxt_get(rdma);
  if (!ctxt)
   return 0;
  ctxt->rc_temp = 1;
  ret = __svc_rdma_post_recv(rdma, ctxt);
  if (ret)
   return 0;
 }
 return 1;
}
