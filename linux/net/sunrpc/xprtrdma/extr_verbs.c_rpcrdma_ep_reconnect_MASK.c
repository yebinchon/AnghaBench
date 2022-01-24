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
struct rpcrdma_ia {struct rdma_cm_id* ri_id; int /*<<< orphan*/  ri_pd; } ;
struct rpcrdma_xprt {int /*<<< orphan*/  rx_ep; struct rpcrdma_ia rx_ia; } ;
struct rdma_cm_id {scalar_t__ device; } ;
struct ib_qp_init_attr {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int ENETUNREACH ; 
 scalar_t__ FUNC0 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct rdma_cm_id*,int /*<<< orphan*/ ,struct ib_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_cm_id*) ; 
 struct rdma_cm_id* FUNC5 (struct rpcrdma_xprt*,struct rpcrdma_ia*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct rpcrdma_ia*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpcrdma_xprt*) ; 

__attribute__((used)) static int FUNC8(struct rpcrdma_xprt *r_xprt,
				struct ib_qp_init_attr *qp_init_attr)
{
	struct rpcrdma_ia *ia = &r_xprt->rx_ia;
	struct rdma_cm_id *id, *old;
	int err, rc;

	FUNC7(r_xprt);

	FUNC6(&r_xprt->rx_ep, ia);

	rc = -EHOSTUNREACH;
	id = FUNC5(r_xprt, ia);
	if (FUNC0(id))
		goto out;

	/* As long as the new ID points to the same device as the
	 * old ID, we can reuse the transport's existing PD and all
	 * previously allocated MRs. Also, the same device means
	 * the transport's previous DMA mappings are still valid.
	 *
	 * This is a sanity check only. There should be no way these
	 * point to two different devices here.
	 */
	old = id;
	rc = -ENETUNREACH;
	if (ia->ri_id->device != id->device) {
		FUNC1("rpcrdma: can't reconnect on different device!\n");
		goto out_destroy;
	}

	err = FUNC2(id, ia->ri_pd, qp_init_attr);
	if (err)
		goto out_destroy;

	/* Atomically replace the transport's ID and QP. */
	rc = 0;
	old = ia->ri_id;
	ia->ri_id = id;
	FUNC4(old);

out_destroy:
	FUNC3(old);
out:
	return rc;
}