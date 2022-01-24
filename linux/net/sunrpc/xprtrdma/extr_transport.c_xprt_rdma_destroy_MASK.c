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
struct rpcrdma_xprt {int /*<<< orphan*/  rx_ia; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  rx_connect_worker; } ;
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpcrdma_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rpcrdma_xprt* FUNC5 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcrdma_xprt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_xprt*) ; 

__attribute__((used)) static void
FUNC9(struct rpc_xprt *xprt)
{
	struct rpcrdma_xprt *r_xprt = FUNC5(xprt);

	FUNC6(r_xprt);

	FUNC0(&r_xprt->rx_connect_worker);

	FUNC3(r_xprt);
	FUNC2(&r_xprt->rx_buf);
	FUNC4(&r_xprt->rx_ia);

	FUNC8(xprt);
	FUNC7(xprt);

	FUNC1(THIS_MODULE);
}