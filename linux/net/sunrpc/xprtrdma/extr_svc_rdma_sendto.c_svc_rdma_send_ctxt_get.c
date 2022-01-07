
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svcxprt_rdma {int sc_send_lock; int sc_send_ctxts; } ;
struct TYPE_2__ {scalar_t__ num_sge; } ;
struct svc_rdma_send_ctxt {scalar_t__ sc_page_count; scalar_t__ sc_cur_sge_no; TYPE_1__ sc_send_wr; int sc_list; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct svc_rdma_send_ctxt* svc_rdma_next_send_ctxt (int *) ;
 struct svc_rdma_send_ctxt* svc_rdma_send_ctxt_alloc (struct svcxprt_rdma*) ;

struct svc_rdma_send_ctxt *svc_rdma_send_ctxt_get(struct svcxprt_rdma *rdma)
{
 struct svc_rdma_send_ctxt *ctxt;

 spin_lock(&rdma->sc_send_lock);
 ctxt = svc_rdma_next_send_ctxt(&rdma->sc_send_ctxts);
 if (!ctxt)
  goto out_empty;
 list_del(&ctxt->sc_list);
 spin_unlock(&rdma->sc_send_lock);

out:
 ctxt->sc_send_wr.num_sge = 0;
 ctxt->sc_cur_sge_no = 0;
 ctxt->sc_page_count = 0;
 return ctxt;

out_empty:
 spin_unlock(&rdma->sc_send_lock);
 ctxt = svc_rdma_send_ctxt_alloc(rdma);
 if (!ctxt)
  return ((void*)0);
 goto out;
}
