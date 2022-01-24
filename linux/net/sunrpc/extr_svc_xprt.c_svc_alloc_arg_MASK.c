#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_buf {int page_len; int len; TYPE_2__* tail; scalar_t__ page_base; struct page** pages; TYPE_1__* head; } ;
struct svc_serv {int sv_max_mesg; } ;
struct svc_rqst {struct page** rq_pages; struct xdr_buf rq_arg; struct page** rq_page_end; struct svc_serv* rq_server; } ;
struct page {int dummy; } ;
struct TYPE_4__ {scalar_t__ iov_len; } ;
struct TYPE_3__ {int iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int RPCSVC_MAXPAGES ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct svc_rqst *rqstp)
{
	struct svc_serv *serv = rqstp->rq_server;
	struct xdr_buf *arg;
	int pages;
	int i;

	/* now allocate needed pages.  If we get a failure, sleep briefly */
	pages = (serv->sv_max_mesg + 2 * PAGE_SIZE) >> PAGE_SHIFT;
	if (pages > RPCSVC_MAXPAGES) {
		FUNC4("svc: warning: pages=%u > RPCSVC_MAXPAGES=%lu\n",
			     pages, RPCSVC_MAXPAGES);
		/* use as many pages as possible */
		pages = RPCSVC_MAXPAGES;
	}
	for (i = 0; i < pages ; i++)
		while (rqstp->rq_pages[i] == NULL) {
			struct page *p = FUNC0(GFP_KERNEL);
			if (!p) {
				FUNC6(TASK_INTERRUPTIBLE);
				if (FUNC7() || FUNC1()) {
					FUNC6(TASK_RUNNING);
					return -EINTR;
				}
				FUNC5(FUNC2(500));
			}
			rqstp->rq_pages[i] = p;
		}
	rqstp->rq_page_end = &rqstp->rq_pages[i];
	rqstp->rq_pages[i++] = NULL; /* this might be seen in nfs_read_actor */

	/* Make arg->head point to first page and arg->pages point to rest */
	arg = &rqstp->rq_arg;
	arg->head[0].iov_base = FUNC3(rqstp->rq_pages[0]);
	arg->head[0].iov_len = PAGE_SIZE;
	arg->pages = rqstp->rq_pages + 1;
	arg->page_base = 0;
	/* save at least one page for response */
	arg->page_len = (pages-2)*PAGE_SIZE;
	arg->len = (pages-1)*PAGE_SIZE;
	arg->tail[0].iov_len = 0;
	return 0;
}