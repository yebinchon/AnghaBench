#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpcrdma_sendctx {TYPE_1__* sc_req; int /*<<< orphan*/  sc_device; scalar_t__ sc_unmap_count; struct ib_sge* sc_sges; } ;
struct ib_sge {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  rl_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpcrdma_sendctx_done ; 

void FUNC2(struct rpcrdma_sendctx *sc)
{
	struct ib_sge *sge;

	if (!sc->sc_unmap_count)
		return;

	/* The first two SGEs contain the transport header and
	 * the inline buffer. These are always left mapped so
	 * they can be cheaply re-used.
	 */
	for (sge = &sc->sc_sges[2]; sc->sc_unmap_count;
	     ++sge, --sc->sc_unmap_count)
		FUNC0(sc->sc_device, sge->addr, sge->length,
				  DMA_TO_DEVICE);

	FUNC1(&sc->sc_req->rl_kref, rpcrdma_sendctx_done);
}