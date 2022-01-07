
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svcxprt_rdma {int sc_rw_ctxt_lock; int sc_rw_ctxts; } ;
struct TYPE_2__ {int sgl; } ;
struct svc_rdma_rw_ctxt {TYPE_1__ rw_sg_table; int rw_first_sgl; int rw_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SG_CHUNK_SIZE ;
 int kfree (struct svc_rdma_rw_ctxt*) ;
 struct svc_rdma_rw_ctxt* kmalloc (int ,int ) ;
 int list_del (int *) ;
 int rw_first_sgl ;
 scalar_t__ sg_alloc_table_chained (TYPE_1__*,unsigned int,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int struct_size (struct svc_rdma_rw_ctxt*,int ,int ) ;
 struct svc_rdma_rw_ctxt* svc_rdma_next_ctxt (int *) ;

__attribute__((used)) static struct svc_rdma_rw_ctxt *
svc_rdma_get_rw_ctxt(struct svcxprt_rdma *rdma, unsigned int sges)
{
 struct svc_rdma_rw_ctxt *ctxt;

 spin_lock(&rdma->sc_rw_ctxt_lock);

 ctxt = svc_rdma_next_ctxt(&rdma->sc_rw_ctxts);
 if (ctxt) {
  list_del(&ctxt->rw_list);
  spin_unlock(&rdma->sc_rw_ctxt_lock);
 } else {
  spin_unlock(&rdma->sc_rw_ctxt_lock);
  ctxt = kmalloc(struct_size(ctxt, rw_first_sgl, SG_CHUNK_SIZE),
          GFP_KERNEL);
  if (!ctxt)
   goto out;
  INIT_LIST_HEAD(&ctxt->rw_list);
 }

 ctxt->rw_sg_table.sgl = ctxt->rw_first_sgl;
 if (sg_alloc_table_chained(&ctxt->rw_sg_table, sges,
       ctxt->rw_sg_table.sgl,
       SG_CHUNK_SIZE)) {
  kfree(ctxt);
  ctxt = ((void*)0);
 }
out:
 return ctxt;
}
