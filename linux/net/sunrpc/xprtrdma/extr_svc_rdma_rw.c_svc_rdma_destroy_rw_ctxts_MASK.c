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
struct svcxprt_rdma {int /*<<< orphan*/  sc_rw_ctxts; } ;
struct svc_rdma_rw_ctxt {int /*<<< orphan*/  rw_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rdma_rw_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct svc_rdma_rw_ctxt* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct svcxprt_rdma *rdma)
{
	struct svc_rdma_rw_ctxt *ctxt;

	while ((ctxt = FUNC2(&rdma->sc_rw_ctxts)) != NULL) {
		FUNC1(&ctxt->rw_list);
		FUNC0(ctxt);
	}
}