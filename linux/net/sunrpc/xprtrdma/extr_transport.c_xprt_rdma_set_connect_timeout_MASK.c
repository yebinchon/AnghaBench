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
struct rpc_timeout {unsigned long to_initval; unsigned long to_maxval; } ;
struct rpcrdma_xprt {struct rpc_timeout rx_timeout; } ;
struct rpc_xprt {unsigned long connect_timeout; unsigned long max_reconnect_timeout; int /*<<< orphan*/  transport_lock; struct rpc_timeout* timeout; } ;

/* Variables and functions */
 unsigned long RPCRDMA_INIT_REEST_TO ; 
 struct rpcrdma_xprt* FUNC0 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpcrdma_xprt*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct rpc_xprt *xprt,
					  unsigned long connect_timeout,
					  unsigned long reconnect_timeout)
{
	struct rpcrdma_xprt *r_xprt = FUNC0(xprt);

	FUNC3(r_xprt, connect_timeout, reconnect_timeout);

	FUNC1(&xprt->transport_lock);

	if (connect_timeout < xprt->connect_timeout) {
		struct rpc_timeout to;
		unsigned long initval;

		to = *xprt->timeout;
		initval = connect_timeout;
		if (initval < RPCRDMA_INIT_REEST_TO << 1)
			initval = RPCRDMA_INIT_REEST_TO << 1;
		to.to_initval = initval;
		to.to_maxval = initval;
		r_xprt->rx_timeout = to;
		xprt->timeout = &r_xprt->rx_timeout;
		xprt->connect_timeout = connect_timeout;
	}

	if (reconnect_timeout < xprt->max_reconnect_timeout)
		xprt->max_reconnect_timeout = reconnect_timeout;

	FUNC2(&xprt->transport_lock);
}