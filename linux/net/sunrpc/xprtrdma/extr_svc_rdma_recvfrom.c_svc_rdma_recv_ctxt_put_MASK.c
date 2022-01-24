#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct svcxprt_rdma {int /*<<< orphan*/  sc_recv_ctxts; } ;
struct svc_rdma_recv_ctxt {unsigned int rc_page_count; int /*<<< orphan*/  rc_node; int /*<<< orphan*/  rc_temp; int /*<<< orphan*/ * rc_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ; 

void FUNC3(struct svcxprt_rdma *rdma,
			    struct svc_rdma_recv_ctxt *ctxt)
{
	unsigned int i;

	for (i = 0; i < ctxt->rc_page_count; i++)
		FUNC1(ctxt->rc_pages[i]);

	if (!ctxt->rc_temp)
		FUNC0(&ctxt->rc_node, &rdma->sc_recv_ctxts);
	else
		FUNC2(rdma, ctxt);
}