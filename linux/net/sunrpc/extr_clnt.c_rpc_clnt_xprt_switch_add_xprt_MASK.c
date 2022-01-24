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
struct rpc_xprt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rpc_xprt*) ; 

void FUNC4(struct rpc_clnt *clnt, struct rpc_xprt *xprt)
{
	FUNC1();
	FUNC3(FUNC0(clnt->cl_xpi.xpi_xpswitch),
				 xprt);
	FUNC2();
}