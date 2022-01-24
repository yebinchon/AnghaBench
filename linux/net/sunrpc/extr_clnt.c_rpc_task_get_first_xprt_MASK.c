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
struct rpc_xprt {int dummy; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct rpc_xprt* FUNC3 (struct rpc_clnt*,struct rpc_xprt*) ; 
 struct rpc_xprt* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rpc_xprt *
FUNC5(struct rpc_clnt *clnt)
{
	struct rpc_xprt *xprt;

	FUNC1();
	xprt = FUNC4(FUNC0(clnt->cl_xprt));
	FUNC2();
	return FUNC3(clnt, xprt);
}