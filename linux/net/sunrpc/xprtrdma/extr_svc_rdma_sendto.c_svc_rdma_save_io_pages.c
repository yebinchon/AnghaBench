
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int ** rq_respages; int ** rq_next_page; } ;
struct svc_rdma_send_ctxt {int sc_page_count; int ** sc_pages; } ;



__attribute__((used)) static void svc_rdma_save_io_pages(struct svc_rqst *rqstp,
       struct svc_rdma_send_ctxt *ctxt)
{
 int i, pages = rqstp->rq_next_page - rqstp->rq_respages;

 ctxt->sc_page_count += pages;
 for (i = 0; i < pages; i++) {
  ctxt->sc_pages[i] = rqstp->rq_respages[i];
  rqstp->rq_respages[i] = ((void*)0);
 }


 rqstp->rq_next_page = rqstp->rq_respages;
}
