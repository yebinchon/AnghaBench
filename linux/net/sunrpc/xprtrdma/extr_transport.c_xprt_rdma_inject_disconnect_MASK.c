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
struct TYPE_2__ {int /*<<< orphan*/  ri_id; } ;
struct rpcrdma_xprt {TYPE_1__ rx_ia; } ;
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rpcrdma_xprt* FUNC1 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_xprt*) ; 

__attribute__((used)) static void
FUNC3(struct rpc_xprt *xprt)
{
	struct rpcrdma_xprt *r_xprt = FUNC1(xprt);

	FUNC2(r_xprt);
	FUNC0(r_xprt->rx_ia.ri_id);
}