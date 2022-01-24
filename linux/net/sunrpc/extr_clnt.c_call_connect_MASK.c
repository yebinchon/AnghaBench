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
struct rpc_task {scalar_t__ tk_status; int tk_flags; int /*<<< orphan*/  tk_action; int /*<<< orphan*/  tk_pid; TYPE_1__* tk_rqstp; } ;
struct TYPE_2__ {struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int RPC_TASK_NOCONNECT ; 
 int /*<<< orphan*/  call_connect_status ; 
 int /*<<< orphan*/  call_transmit ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct rpc_xprt*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 scalar_t__ FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*) ; 
 scalar_t__ FUNC5 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*) ; 

__attribute__((used)) static void
FUNC7(struct rpc_task *task)
{
	struct rpc_xprt *xprt = task->tk_rqstp->rq_xprt;

	if (FUNC3(task)) {
		FUNC2(task);
		return;
	}

	if (FUNC5(xprt)) {
		task->tk_action = call_transmit;
		return;
	}

	FUNC0("RPC: %5u call_connect xprt %p %s connected\n",
			task->tk_pid, xprt,
			(FUNC5(xprt) ? "is" : "is not"));

	task->tk_action = call_connect_status;
	if (task->tk_status < 0)
		return;
	if (task->tk_flags & RPC_TASK_NOCONNECT) {
		FUNC1(task, -ENOTCONN);
		return;
	}
	if (!FUNC6(task))
		return;
	FUNC4(task);
}