
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_buf {int page_len; int len; TYPE_2__* tail; scalar_t__ page_base; struct page** pages; TYPE_1__* head; } ;
struct svc_serv {int sv_max_mesg; } ;
struct svc_rqst {struct page** rq_pages; struct xdr_buf rq_arg; struct page** rq_page_end; struct svc_serv* rq_server; } ;
struct page {int dummy; } ;
struct TYPE_4__ {scalar_t__ iov_len; } ;
struct TYPE_3__ {int iov_len; int iov_base; } ;


 int EINTR ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int RPCSVC_MAXPAGES ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 struct page* alloc_page (int ) ;
 scalar_t__ kthread_should_stop () ;
 int msecs_to_jiffies (int) ;
 int page_address (struct page*) ;
 int pr_warn_once (char*,int,int) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 scalar_t__ signalled () ;

__attribute__((used)) static int svc_alloc_arg(struct svc_rqst *rqstp)
{
 struct svc_serv *serv = rqstp->rq_server;
 struct xdr_buf *arg;
 int pages;
 int i;


 pages = (serv->sv_max_mesg + 2 * PAGE_SIZE) >> PAGE_SHIFT;
 if (pages > RPCSVC_MAXPAGES) {
  pr_warn_once("svc: warning: pages=%u > RPCSVC_MAXPAGES=%lu\n",
        pages, RPCSVC_MAXPAGES);

  pages = RPCSVC_MAXPAGES;
 }
 for (i = 0; i < pages ; i++)
  while (rqstp->rq_pages[i] == ((void*)0)) {
   struct page *p = alloc_page(GFP_KERNEL);
   if (!p) {
    set_current_state(TASK_INTERRUPTIBLE);
    if (signalled() || kthread_should_stop()) {
     set_current_state(TASK_RUNNING);
     return -EINTR;
    }
    schedule_timeout(msecs_to_jiffies(500));
   }
   rqstp->rq_pages[i] = p;
  }
 rqstp->rq_page_end = &rqstp->rq_pages[i];
 rqstp->rq_pages[i++] = ((void*)0);


 arg = &rqstp->rq_arg;
 arg->head[0].iov_base = page_address(rqstp->rq_pages[0]);
 arg->head[0].iov_len = PAGE_SIZE;
 arg->pages = rqstp->rq_pages + 1;
 arg->page_base = 0;

 arg->page_len = (pages-2)*PAGE_SIZE;
 arg->len = (pages-1)*PAGE_SIZE;
 arg->tail[0].iov_len = 0;
 return 0;
}
