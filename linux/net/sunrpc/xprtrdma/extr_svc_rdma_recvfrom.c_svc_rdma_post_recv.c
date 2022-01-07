
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_recv_ctxt {int dummy; } ;


 int ENOMEM ;
 int __svc_rdma_post_recv (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ;
 struct svc_rdma_recv_ctxt* svc_rdma_recv_ctxt_get (struct svcxprt_rdma*) ;

__attribute__((used)) static int svc_rdma_post_recv(struct svcxprt_rdma *rdma)
{
 struct svc_rdma_recv_ctxt *ctxt;

 ctxt = svc_rdma_recv_ctxt_get(rdma);
 if (!ctxt)
  return -ENOMEM;
 return __svc_rdma_post_recv(rdma, ctxt);
}
