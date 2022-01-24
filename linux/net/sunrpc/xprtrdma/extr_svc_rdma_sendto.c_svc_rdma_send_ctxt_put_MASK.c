#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svcxprt_rdma {int /*<<< orphan*/  sc_send_lock; int /*<<< orphan*/  sc_send_ctxts; TYPE_1__* sc_cm_id; } ;
struct TYPE_5__ {unsigned int num_sge; } ;
struct svc_rdma_send_ctxt {unsigned int sc_page_count; int /*<<< orphan*/  sc_list; int /*<<< orphan*/ * sc_pages; TYPE_3__* sc_sges; TYPE_2__ sc_send_wr; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {struct ib_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct svcxprt_rdma *rdma,
			    struct svc_rdma_send_ctxt *ctxt)
{
	struct ib_device *device = rdma->sc_cm_id->device;
	unsigned int i;

	/* The first SGE contains the transport header, which
	 * remains mapped until @ctxt is destroyed.
	 */
	for (i = 1; i < ctxt->sc_send_wr.num_sge; i++)
		FUNC0(device,
				  ctxt->sc_sges[i].addr,
				  ctxt->sc_sges[i].length,
				  DMA_TO_DEVICE);

	for (i = 0; i < ctxt->sc_page_count; ++i)
		FUNC2(ctxt->sc_pages[i]);

	FUNC3(&rdma->sc_send_lock);
	FUNC1(&ctxt->sc_list, &rdma->sc_send_ctxts);
	FUNC4(&rdma->sc_send_lock);
}