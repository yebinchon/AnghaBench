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
struct rpc_timeout {int dummy; } ;
struct rpc_clnt {int cl_autobind; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_xprt; struct rpc_timeout const* cl_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rpc_xprt*) ; 
 struct rpc_xprt* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_xprt*) ; 

__attribute__((used)) static struct rpc_xprt *FUNC6(struct rpc_clnt *clnt,
		struct rpc_xprt *xprt,
		const struct rpc_timeout *timeout)
{
	struct rpc_xprt *old;

	FUNC3(&clnt->cl_lock);
	old = FUNC2(clnt->cl_xprt,
			FUNC0(&clnt->cl_lock));

	if (!FUNC5(xprt))
		clnt->cl_autobind = 1;

	clnt->cl_timeout = timeout;
	FUNC1(clnt->cl_xprt, xprt);
	FUNC4(&clnt->cl_lock);

	return old;
}