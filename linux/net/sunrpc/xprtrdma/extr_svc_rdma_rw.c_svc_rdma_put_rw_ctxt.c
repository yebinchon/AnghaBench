
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int sc_rw_ctxt_lock; int sc_rw_ctxts; } ;
struct svc_rdma_rw_ctxt {int rw_list; int rw_sg_table; } ;


 int SG_CHUNK_SIZE ;
 int list_add (int *,int *) ;
 int sg_free_table_chained (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void svc_rdma_put_rw_ctxt(struct svcxprt_rdma *rdma,
     struct svc_rdma_rw_ctxt *ctxt)
{
 sg_free_table_chained(&ctxt->rw_sg_table, SG_CHUNK_SIZE);

 spin_lock(&rdma->sc_rw_ctxt_lock);
 list_add(&ctxt->rw_list, &rdma->sc_rw_ctxts);
 spin_unlock(&rdma->sc_rw_ctxt_lock);
}
