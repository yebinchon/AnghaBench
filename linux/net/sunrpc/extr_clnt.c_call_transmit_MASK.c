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
struct rpc_task {scalar_t__ tk_status; int /*<<< orphan*/  tk_xprt; int /*<<< orphan*/  tk_runstate; int /*<<< orphan*/  tk_action; } ;

/* Variables and functions */
 scalar_t__ ENOTCONN ; 
 int /*<<< orphan*/  RPC_TASK_NEED_XMIT ; 
 int /*<<< orphan*/  call_transmit_status ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 scalar_t__ FUNC2 (struct rpc_task*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*) ; 

__attribute__((used)) static void
FUNC8(struct rpc_task *task)
{
	if (FUNC2(task)) {
		FUNC1(task);
		return;
	}

	FUNC0(task);

	task->tk_action = call_transmit_status;
	if (!FUNC6(task))
		return;
	task->tk_status = 0;
	if (FUNC3(RPC_TASK_NEED_XMIT, &task->tk_runstate)) {
		if (!FUNC4(task->tk_xprt)) {
			task->tk_status = -ENOTCONN;
			return;
		}
		FUNC7(task);
	}
	FUNC5(task);
}