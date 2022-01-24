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
struct TYPE_2__ {int rb_credits; } ;
struct rpcrdma_ia {int /*<<< orphan*/  ri_flags; } ;
struct rpcrdma_ep {int /*<<< orphan*/  rep_connected; } ;
struct rpcrdma_xprt {TYPE_1__ rx_buf; struct rpcrdma_ia rx_ia; struct rpcrdma_ep rx_ep; } ;
struct rpc_xprt {int /*<<< orphan*/  connect_cookie; scalar_t__ reestablish_timeout; int /*<<< orphan*/  cwnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  RPCRDMA_IAF_REMOVING ; 
 int /*<<< orphan*/  RPC_CWNDSHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_ep*,struct rpcrdma_ia*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_ia*) ; 
 struct rpcrdma_xprt* FUNC3 (struct rpc_xprt*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpcrdma_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*) ; 

void FUNC8(struct rpc_xprt *xprt)
{
	struct rpcrdma_xprt *r_xprt = FUNC3(xprt);
	struct rpcrdma_ep *ep = &r_xprt->rx_ep;
	struct rpcrdma_ia *ia = &r_xprt->rx_ia;

	FUNC0();

	FUNC5(r_xprt);

	/* Prevent marshaling and sending of new requests */
	FUNC6(xprt);

	if (FUNC4(RPCRDMA_IAF_REMOVING, &ia->ri_flags)) {
		FUNC2(ia);
		goto out;
	}

	if (ep->rep_connected == -ENODEV)
		return;
	FUNC1(ep, ia);

	/* Prepare @xprt for the next connection by reinitializing
	 * its credit grant to one (see RFC 8166, Section 3.3.3).
	 */
	r_xprt->rx_buf.rb_credits = 1;
	xprt->cwnd = RPC_CWNDSHIFT;

out:
	xprt->reestablish_timeout = 0;
	++xprt->connect_cookie;
	FUNC7(xprt);
}