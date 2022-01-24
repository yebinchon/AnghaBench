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
struct rpc_xprt_switch {scalar_t__ xps_nxprts; int /*<<< orphan*/ * xps_net; int /*<<< orphan*/  xps_nactive; } ;
struct rpc_xprt {int /*<<< orphan*/  xprt_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rpc_xprt_switch *xps,
		struct rpc_xprt *xprt)
{
	if (FUNC2(xprt == NULL))
		return;
	xps->xps_nactive--;
	xps->xps_nxprts--;
	if (xps->xps_nxprts == 0)
		xps->xps_net = NULL;
	FUNC1();
	FUNC0(&xprt->xprt_switch);
}