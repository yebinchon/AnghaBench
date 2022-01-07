
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_xprt; int sc_qp; } ;
struct svc_rdma_recv_ctxt {int rc_recv_wr; } ;


 int ib_post_recv (int ,int *,int *) ;
 int svc_rdma_recv_ctxt_put (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ;
 int svc_xprt_get (int *) ;
 int svc_xprt_put (int *) ;
 int trace_svcrdma_post_recv (int *,int) ;

__attribute__((used)) static int __svc_rdma_post_recv(struct svcxprt_rdma *rdma,
    struct svc_rdma_recv_ctxt *ctxt)
{
 int ret;

 svc_xprt_get(&rdma->sc_xprt);
 ret = ib_post_recv(rdma->sc_qp, &ctxt->rc_recv_wr, ((void*)0));
 trace_svcrdma_post_recv(&ctxt->rc_recv_wr, ret);
 if (ret)
  goto err_post;
 return 0;

err_post:
 svc_rdma_recv_ctxt_put(rdma, ctxt);
 svc_xprt_put(&rdma->sc_xprt);
 return ret;
}
