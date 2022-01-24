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
struct svcxprt_rdma {int /*<<< orphan*/  sc_rq_dto_q; int /*<<< orphan*/  sc_read_complete_q; } ;
struct svc_rdma_recv_ctxt {int /*<<< orphan*/  rc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct svc_rdma_recv_ctxt* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ; 

void FUNC3(struct svcxprt_rdma *rdma)
{
	struct svc_rdma_recv_ctxt *ctxt;

	while ((ctxt = FUNC1(&rdma->sc_read_complete_q))) {
		FUNC0(&ctxt->rc_list);
		FUNC2(rdma, ctxt);
	}
	while ((ctxt = FUNC1(&rdma->sc_rq_dto_q))) {
		FUNC0(&ctxt->rc_list);
		FUNC2(rdma, ctxt);
	}
}