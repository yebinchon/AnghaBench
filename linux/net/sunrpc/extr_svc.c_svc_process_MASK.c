#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct svc_serv {TYPE_4__* sv_stats; } ;
struct TYPE_7__ {TYPE_2__* tail; int /*<<< orphan*/  buflen; scalar_t__ page_len; scalar_t__ page_base; scalar_t__ len; int /*<<< orphan*/ * pages; struct kvec* head; } ;
struct TYPE_5__ {struct kvec* head; } ;
struct svc_rqst {scalar_t__ rq_prot; TYPE_3__ rq_res; int /*<<< orphan*/ * rq_respages; int /*<<< orphan*/ * rq_next_page; struct svc_serv* rq_server; TYPE_1__ rq_arg; } ;
struct kvec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
struct TYPE_8__ {int /*<<< orphan*/  rpcbadfmt; } ;
struct TYPE_6__ {scalar_t__ iov_len; int /*<<< orphan*/ * iov_base; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*) ; 
 scalar_t__ FUNC3 (struct kvec*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*,struct kvec*,struct kvec*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvec*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct svc_rqst*) ; 

int
FUNC8(struct svc_rqst *rqstp)
{
	struct kvec		*argv = &rqstp->rq_arg.head[0];
	struct kvec		*resv = &rqstp->rq_res.head[0];
	struct svc_serv		*serv = rqstp->rq_server;
	u32			dir;

	/*
	 * Setup response xdr_buf.
	 * Initially it has just one page
	 */
	rqstp->rq_next_page = &rqstp->rq_respages[1];
	resv->iov_base = FUNC1(rqstp->rq_respages[0]);
	resv->iov_len = 0;
	rqstp->rq_res.pages = rqstp->rq_respages + 1;
	rqstp->rq_res.len = 0;
	rqstp->rq_res.page_base = 0;
	rqstp->rq_res.page_len = 0;
	rqstp->rq_res.buflen = PAGE_SIZE;
	rqstp->rq_res.tail[0].iov_base = NULL;
	rqstp->rq_res.tail[0].iov_len = 0;

	dir  = FUNC3(argv);
	if (dir != 0) {
		/* direction != CALL */
		FUNC4(rqstp, "bad direction %d, dropping request\n", dir);
		serv->sv_stats->rpcbadfmt++;
		goto out_drop;
	}

	/* Reserve space for the record marker */
	if (rqstp->rq_prot == IPPROTO_TCP)
		FUNC6(resv, 0);

	/* Returns 1 for send, 0 for drop */
	if (FUNC0(FUNC5(rqstp, argv, resv)))
		return FUNC7(rqstp);

out_drop:
	FUNC2(rqstp);
	return 0;
}