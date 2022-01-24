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
struct rpc_xprt_switch {scalar_t__ xps_nxprts; int /*<<< orphan*/  xps_nactive; int /*<<< orphan*/  xps_net; int /*<<< orphan*/  xps_xprt_list; } ;
struct rpc_xprt {int /*<<< orphan*/  xprt_net; int /*<<< orphan*/  xprt_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC4(struct rpc_xprt_switch *xps,
		struct rpc_xprt *xprt)
{
	if (FUNC2(FUNC3(xprt) == NULL))
		return;
	FUNC0(&xprt->xprt_switch, &xps->xps_xprt_list);
	FUNC1();
	if (xps->xps_nxprts == 0)
		xps->xps_net = xprt->xprt_net;
	xps->xps_nxprts++;
	xps->xps_nactive++;
}