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
struct sockaddr {int dummy; } ;
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {int /*<<< orphan*/ * address_strings; int /*<<< orphan*/  addr; } ;
struct rpc_task {int tk_status; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_add_xprt_test {int /*<<< orphan*/  data; int /*<<< orphan*/  (* add_xprt_test ) (struct rpc_clnt*,struct rpc_xprt*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EADDRINUSE ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int FUNC1 (struct rpc_task*) ; 
 size_t RPC_DISPLAY_ADDR ; 
 int RPC_TASK_NULLCREDS ; 
 int RPC_TASK_SOFT ; 
 int RPC_TASK_SOFTCONN ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 struct rpc_task* FUNC3 (struct rpc_clnt*,struct rpc_xprt*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*) ; 
 scalar_t__ FUNC5 (struct rpc_xprt_switch*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_clnt*,struct rpc_xprt*,int /*<<< orphan*/ ) ; 
 struct rpc_xprt* FUNC7 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_xprt_switch*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_xprt_switch*) ; 

int FUNC11(struct rpc_clnt *clnt,
				     struct rpc_xprt_switch *xps,
				     struct rpc_xprt *xprt,
				     void *data)
{
	struct rpc_task *task;
	struct rpc_add_xprt_test *xtest = (struct rpc_add_xprt_test *)data;
	int status = -EADDRINUSE;

	xprt = FUNC7(xprt);
	FUNC9(xps);

	if (FUNC5(xps, (struct sockaddr *)&xprt->addr))
		goto out_err;

	/* Test the connection */
	task = FUNC3(clnt, xprt, NULL,
				    RPC_TASK_SOFT | RPC_TASK_SOFTCONN | RPC_TASK_NULLCREDS,
				    NULL, NULL);
	if (FUNC0(task)) {
		status = FUNC1(task);
		goto out_err;
	}
	status = task->tk_status;
	FUNC4(task);

	if (status < 0)
		goto out_err;

	/* rpc_xprt_switch and rpc_xprt are deferrenced by add_xprt_test() */
	xtest->add_xprt_test(clnt, xprt, xtest->data);

	FUNC8(xprt);
	FUNC10(xps);

	/* so that rpc_clnt_add_xprt does not call rpc_xprt_switch_add_xprt */
	return 1;
out_err:
	FUNC8(xprt);
	FUNC10(xps);
	FUNC2("RPC:   rpc_clnt_test_xprt failed: %d addr %s not added\n",
		status, xprt->address_strings[RPC_DISPLAY_ADDR]);
	return status;
}