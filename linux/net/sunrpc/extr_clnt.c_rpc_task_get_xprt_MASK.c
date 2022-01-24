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
struct rpc_xprt_switch {int /*<<< orphan*/  xps_queuelen; } ;
struct rpc_xprt {int /*<<< orphan*/  queuelen; } ;
struct TYPE_2__ {int /*<<< orphan*/  xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rpc_xprt_switch* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct rpc_xprt *
FUNC4(struct rpc_clnt *clnt, struct rpc_xprt *xprt)
{
	struct rpc_xprt_switch *xps;

	if (!xprt)
		return NULL;
	FUNC2();
	xps = FUNC1(clnt->cl_xpi.xpi_xpswitch);
	FUNC0(&xps->xps_queuelen);
	FUNC3();
	FUNC0(&xprt->queuelen);

	return xprt;
}