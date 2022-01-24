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
struct rpc_xprt {int /*<<< orphan*/  addr; } ;
struct rpc_task {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_cb_add_xprt_calldata {int /*<<< orphan*/  xps; int /*<<< orphan*/  xprt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int FUNC1 (struct rpc_task*) ; 
 int RPC_TASK_ASYNC ; 
 int RPC_TASK_NULLCREDS ; 
 int RPC_TASK_SOFT ; 
 int RPC_TASK_SOFTCONN ; 
 struct rpc_cb_add_xprt_calldata* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct rpc_task* FUNC3 (struct rpc_clnt*,struct rpc_xprt*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct rpc_cb_add_xprt_calldata*) ; 
 int /*<<< orphan*/  rpc_cb_add_xprt_call_ops ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_cb_add_xprt_calldata*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_xprt_switch*) ; 

int FUNC9(struct rpc_clnt *clnt,
		struct rpc_xprt_switch *xps, struct rpc_xprt *xprt,
		void *dummy)
{
	struct rpc_cb_add_xprt_calldata *data;
	struct rpc_task *task;

	data = FUNC2(sizeof(*data), GFP_NOFS);
	if (!data)
		return -ENOMEM;
	data->xps = FUNC8(xps);
	data->xprt = FUNC7(xprt);
	if (FUNC6(data->xps, (struct sockaddr *)&xprt->addr)) {
		FUNC4(data);
		goto success;
	}

	task = FUNC3(clnt, xprt, NULL,
			RPC_TASK_SOFT|RPC_TASK_SOFTCONN|RPC_TASK_ASYNC|RPC_TASK_NULLCREDS,
			&rpc_cb_add_xprt_call_ops, data);
	if (FUNC0(task))
		return FUNC1(task);
	FUNC5(task);
success:
	return 1;
}