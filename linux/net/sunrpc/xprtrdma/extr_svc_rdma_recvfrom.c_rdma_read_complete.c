
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buflen; int len; int * tail; int * head; int page_len; int * pages; } ;
struct svc_rqst {TYPE_1__ rq_arg; int * rq_respages; int * rq_next_page; int * rq_pages; } ;
struct TYPE_4__ {int buflen; int len; int * tail; int * head; int page_len; } ;
struct svc_rdma_recv_ctxt {int rc_page_count; size_t rc_hdr_count; TYPE_2__ rc_arg; int * rc_pages; } ;


 int put_page (int ) ;

__attribute__((used)) static void rdma_read_complete(struct svc_rqst *rqstp,
          struct svc_rdma_recv_ctxt *head)
{
 int page_no;




 for (page_no = 0; page_no < head->rc_page_count; page_no++) {
  put_page(rqstp->rq_pages[page_no]);
  rqstp->rq_pages[page_no] = head->rc_pages[page_no];
 }
 head->rc_page_count = 0;


 rqstp->rq_arg.pages = &rqstp->rq_pages[head->rc_hdr_count];
 rqstp->rq_arg.page_len = head->rc_arg.page_len;


 rqstp->rq_respages = &rqstp->rq_pages[page_no];
 rqstp->rq_next_page = rqstp->rq_respages + 1;


 rqstp->rq_arg.head[0] = head->rc_arg.head[0];
 rqstp->rq_arg.tail[0] = head->rc_arg.tail[0];
 rqstp->rq_arg.len = head->rc_arg.len;
 rqstp->rq_arg.buflen = head->rc_arg.buflen;
}
