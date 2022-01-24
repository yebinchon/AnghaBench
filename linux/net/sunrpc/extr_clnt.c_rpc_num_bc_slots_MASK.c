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
struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_xprt; } ;
struct TYPE_2__ {unsigned int (* bc_num_slots ) (struct rpc_xprt*) ;} ;

/* Variables and functions */
 struct rpc_xprt* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (struct rpc_xprt*) ; 

unsigned int FUNC4(struct rpc_clnt *clnt)
{
	struct rpc_xprt *xprt;
	unsigned int ret;

	FUNC1();
	xprt = FUNC0(clnt->cl_xprt);
	ret = xprt->ops->bc_num_slots(xprt);
	FUNC2();
	return ret;
}