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
struct rpcrdma_ia {int /*<<< orphan*/  ri_pd; int /*<<< orphan*/  ri_id; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct ib_qp_init_attr {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int ENETUNREACH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_qp_init_attr*) ; 
 int FUNC2 (struct rpcrdma_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpcrdma_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpcrdma_ia*) ; 
 scalar_t__ FUNC5 (struct rpcrdma_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcrdma_xprt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpcrdma_xprt*) ; 

__attribute__((used)) static int FUNC8(struct rpcrdma_xprt *r_xprt,
				    struct ib_qp_init_attr *qp_init_attr)
{
	struct rpcrdma_ia *ia = &r_xprt->rx_ia;
	int rc, err;

	FUNC7(r_xprt);

	rc = -EHOSTUNREACH;
	if (FUNC5(r_xprt))
		goto out1;

	rc = -ENOMEM;
	err = FUNC2(r_xprt);
	if (err) {
		FUNC0("rpcrdma: rpcrdma_ep_create returned %d\n", err);
		goto out2;
	}

	rc = -ENETUNREACH;
	err = FUNC1(ia->ri_id, ia->ri_pd, qp_init_attr);
	if (err) {
		FUNC0("rpcrdma: rdma_create_qp returned %d\n", err);
		goto out3;
	}

	FUNC6(r_xprt);
	return 0;

out3:
	FUNC3(r_xprt);
out2:
	FUNC4(ia);
out1:
	return rc;
}