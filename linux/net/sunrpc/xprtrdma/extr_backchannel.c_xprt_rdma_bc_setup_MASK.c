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
struct TYPE_2__ {int rb_bc_srv_max_requests; } ;
struct rpcrdma_xprt {TYPE_1__ rx_buf; } ;
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 int RPCRDMA_BACKWARD_WRS ; 
 struct rpcrdma_xprt* FUNC0 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_xprt*,unsigned int) ; 

int FUNC2(struct rpc_xprt *xprt, unsigned int reqs)
{
	struct rpcrdma_xprt *r_xprt = FUNC0(xprt);

	r_xprt->rx_buf.rb_bc_srv_max_requests = RPCRDMA_BACKWARD_WRS >> 1;
	FUNC1(r_xprt, reqs);
	return 0;
}