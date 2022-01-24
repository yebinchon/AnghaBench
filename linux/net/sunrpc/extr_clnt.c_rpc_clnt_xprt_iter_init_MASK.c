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
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt_iter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt_iter*,struct rpc_xprt_switch*) ; 
 struct rpc_xprt_switch* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_xprt_switch*) ; 

__attribute__((used)) static
int FUNC6(struct rpc_clnt *clnt, struct rpc_xprt_iter *xpi)
{
	struct rpc_xprt_switch *xps;

	FUNC1();
	xps = FUNC4(FUNC0(clnt->cl_xpi.xpi_xpswitch));
	FUNC2();
	if (xps == NULL)
		return -EAGAIN;
	FUNC3(xpi, xps);
	FUNC5(xps);
	return 0;
}