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
struct rpc_task_setup {int flags; int /*<<< orphan*/  callback_data; int /*<<< orphan*/ * callback_ops; struct rpc_message const* rpc_message; struct rpc_clnt* rpc_client; } ;
struct rpc_task {int tk_status; } ;
struct rpc_message {int dummy; } ;
struct rpc_clnt {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int FUNC1 (struct rpc_task*) ; 
 int RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  rpc_default_ops ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rpc_task* FUNC5 (struct rpc_task_setup*) ; 

int FUNC6(struct rpc_clnt *clnt, const struct rpc_message *msg, int flags)
{
	struct rpc_task	*task;
	struct rpc_task_setup task_setup_data = {
		.rpc_client = clnt,
		.rpc_message = msg,
		.callback_ops = &rpc_default_ops,
		.flags = flags,
	};
	int status;

	FUNC2(flags & RPC_TASK_ASYNC);
	if (flags & RPC_TASK_ASYNC) {
		FUNC4(task_setup_data.callback_ops,
			task_setup_data.callback_data);
		return -EINVAL;
	}

	task = FUNC5(&task_setup_data);
	if (FUNC0(task))
		return FUNC1(task);
	status = task->tk_status;
	FUNC3(task);
	return status;
}