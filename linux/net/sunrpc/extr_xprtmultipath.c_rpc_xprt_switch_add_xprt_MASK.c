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
struct rpc_xprt_switch {int /*<<< orphan*/  xps_lock; int /*<<< orphan*/ * xps_net; } ;
struct rpc_xprt {int /*<<< orphan*/ * xprt_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt_switch*,struct rpc_xprt*) ; 

void FUNC3(struct rpc_xprt_switch *xps,
		struct rpc_xprt *xprt)
{
	if (xprt == NULL)
		return;
	FUNC0(&xps->xps_lock);
	if (xps->xps_net == xprt->xprt_net || xps->xps_net == NULL)
		FUNC2(xps, xprt);
	FUNC1(&xps->xps_lock);
}