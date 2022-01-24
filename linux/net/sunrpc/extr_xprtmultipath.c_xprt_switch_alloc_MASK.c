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
struct rpc_xprt_switch {int /*<<< orphan*/ * xps_iter_ops; int /*<<< orphan*/  xps_xprt_list; int /*<<< orphan*/ * xps_net; int /*<<< orphan*/  xps_queuelen; scalar_t__ xps_nactive; scalar_t__ xps_nxprts; int /*<<< orphan*/  xps_kref; int /*<<< orphan*/  xps_lock; } ;
struct rpc_xprt {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rpc_xprt_switch* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_xprt_iter_singular ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_xprt_switch*,struct rpc_xprt*) ; 

struct rpc_xprt_switch *FUNC6(struct rpc_xprt *xprt,
		gfp_t gfp_flags)
{
	struct rpc_xprt_switch *xps;

	xps = FUNC2(sizeof(*xps), gfp_flags);
	if (xps != NULL) {
		FUNC4(&xps->xps_lock);
		FUNC3(&xps->xps_kref);
		xps->xps_nxprts = xps->xps_nactive = 0;
		FUNC1(&xps->xps_queuelen, 0);
		xps->xps_net = NULL;
		FUNC0(&xps->xps_xprt_list);
		xps->xps_iter_ops = &rpc_xprt_iter_singular;
		FUNC5(xps, xprt);
	}

	return xps;
}