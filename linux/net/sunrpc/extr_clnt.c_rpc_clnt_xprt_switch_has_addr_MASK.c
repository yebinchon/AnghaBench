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
struct sockaddr {int dummy; } ;
struct rpc_xprt_switch {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;

/* Variables and functions */
 struct rpc_xprt_switch* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct rpc_xprt_switch*,struct sockaddr const*) ; 

bool FUNC4(struct rpc_clnt *clnt,
				   const struct sockaddr *sap)
{
	struct rpc_xprt_switch *xps;
	bool ret;

	FUNC1();
	xps = FUNC0(clnt->cl_xpi.xpi_xpswitch);
	ret = FUNC3(xps, sap);
	FUNC2();
	return ret;
}