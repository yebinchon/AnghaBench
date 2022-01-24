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
struct svcxprt_rdma {TYPE_3__* sc_cm_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_sge; } ;
struct svc_rdma_send_ctxt {size_t sc_cur_sge_no; TYPE_2__ sc_send_wr; TYPE_1__* sc_sges; } ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {struct ib_device* device; } ;
struct TYPE_4__ {unsigned int length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,struct page*,unsigned long,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svcxprt_rdma*,struct page*) ; 

__attribute__((used)) static int FUNC3(struct svcxprt_rdma *rdma,
				 struct svc_rdma_send_ctxt *ctxt,
				 struct page *page,
				 unsigned long offset,
				 unsigned int len)
{
	struct ib_device *dev = rdma->sc_cm_id->device;
	dma_addr_t dma_addr;

	dma_addr = FUNC0(dev, page, offset, len, DMA_TO_DEVICE);
	if (FUNC1(dev, dma_addr))
		goto out_maperr;

	ctxt->sc_sges[ctxt->sc_cur_sge_no].addr = dma_addr;
	ctxt->sc_sges[ctxt->sc_cur_sge_no].length = len;
	ctxt->sc_send_wr.num_sge++;
	return 0;

out_maperr:
	FUNC2(rdma, page);
	return -EIO;
}