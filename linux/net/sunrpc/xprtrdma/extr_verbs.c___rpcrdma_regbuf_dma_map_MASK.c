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
struct TYPE_7__ {TYPE_1__* ri_pd; TYPE_2__* ri_id; } ;
struct rpcrdma_xprt {TYPE_3__ rx_ia; } ;
struct TYPE_8__ {int /*<<< orphan*/  lkey; int /*<<< orphan*/  addr; } ;
struct rpcrdma_regbuf {scalar_t__ rg_direction; TYPE_4__ rg_iov; struct ib_device* rg_device; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {struct ib_device* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  local_dma_lkey; } ;

/* Variables and functions */
 scalar_t__ DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_regbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpcrdma_regbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpcrdma_regbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(struct rpcrdma_xprt *r_xprt,
			      struct rpcrdma_regbuf *rb)
{
	struct ib_device *device = r_xprt->rx_ia.ri_id->device;

	if (rb->rg_direction == DMA_NONE)
		return false;

	rb->rg_iov.addr = FUNC0(device, FUNC3(rb),
					    FUNC4(rb), rb->rg_direction);
	if (FUNC1(device, FUNC2(rb))) {
		FUNC5(FUNC2(rb));
		return false;
	}

	rb->rg_device = device;
	rb->rg_iov.lkey = r_xprt->rx_ia.ri_pd->local_dma_lkey;
	return true;
}