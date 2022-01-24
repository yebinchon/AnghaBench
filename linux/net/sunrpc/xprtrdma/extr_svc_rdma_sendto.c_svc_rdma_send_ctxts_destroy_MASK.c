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
struct svcxprt_rdma {int /*<<< orphan*/  sc_max_req_size; TYPE_1__* sc_pd; int /*<<< orphan*/  sc_send_ctxts; } ;
struct svc_rdma_send_ctxt {struct svc_rdma_send_ctxt* sc_xprt_buf; TYPE_2__* sc_sges; int /*<<< orphan*/  sc_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rdma_send_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct svc_rdma_send_ctxt* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct svcxprt_rdma *rdma)
{
	struct svc_rdma_send_ctxt *ctxt;

	while ((ctxt = FUNC3(&rdma->sc_send_ctxts))) {
		FUNC2(&ctxt->sc_list);
		FUNC0(rdma->sc_pd->device,
				    ctxt->sc_sges[0].addr,
				    rdma->sc_max_req_size,
				    DMA_TO_DEVICE);
		FUNC1(ctxt->sc_xprt_buf);
		FUNC1(ctxt);
	}
}