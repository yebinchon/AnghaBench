#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rpcrdma_ia {TYPE_1__* ri_id; TYPE_1__* ri_pd; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_3__* device; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
#define  RPCRDMA_FRWR 128 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 TYPE_1__* FUNC5 (struct rpcrdma_xprt*,struct rpcrdma_ia*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcrdma_ia*) ; 
 int xprt_rdma_memreg_strategy ; 

int
FUNC7(struct rpcrdma_xprt *xprt)
{
	struct rpcrdma_ia *ia = &xprt->rx_ia;
	int rc;

	ia->ri_id = FUNC5(xprt, ia);
	if (FUNC0(ia->ri_id)) {
		rc = FUNC1(ia->ri_id);
		goto out_err;
	}

	ia->ri_pd = FUNC3(ia->ri_id->device, 0);
	if (FUNC0(ia->ri_pd)) {
		rc = FUNC1(ia->ri_pd);
		FUNC4("rpcrdma: ib_alloc_pd() returned %d\n", rc);
		goto out_err;
	}

	switch (xprt_rdma_memreg_strategy) {
	case RPCRDMA_FRWR:
		if (FUNC2(ia->ri_id->device))
			break;
		/*FALLTHROUGH*/
	default:
		FUNC4("rpcrdma: Device %s does not support memreg mode %d\n",
		       ia->ri_id->device->name, xprt_rdma_memreg_strategy);
		rc = -EINVAL;
		goto out_err;
	}

	return 0;

out_err:
	FUNC6(ia);
	return rc;
}