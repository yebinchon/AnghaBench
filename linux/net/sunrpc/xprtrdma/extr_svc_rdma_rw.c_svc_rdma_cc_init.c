
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_xprt; } ;
struct svc_rdma_chunk_ctxt {scalar_t__ cc_sqecount; int cc_rwctxts; struct svcxprt_rdma* cc_rdma; } ;


 int INIT_LIST_HEAD (int *) ;
 int svc_xprt_get (int *) ;

__attribute__((used)) static void svc_rdma_cc_init(struct svcxprt_rdma *rdma,
        struct svc_rdma_chunk_ctxt *cc)
{
 cc->cc_rdma = rdma;
 svc_xprt_get(&rdma->sc_xprt);

 INIT_LIST_HEAD(&cc->cc_rwctxts);
 cc->cc_sqecount = 0;
}
