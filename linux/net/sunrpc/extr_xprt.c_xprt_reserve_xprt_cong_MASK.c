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
struct rpc_xprt {int /*<<< orphan*/  sending; struct rpc_task* snd_task; int /*<<< orphan*/  state; } ;
struct rpc_task {int /*<<< orphan*/  tk_status; int /*<<< orphan*/  tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  XPRT_WRITE_SPACE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_rqst*) ; 

int FUNC9(struct rpc_xprt *xprt, struct rpc_task *task)
{
	struct rpc_rqst *req = task->tk_rqstp;

	if (FUNC4(XPRT_LOCKED, &xprt->state)) {
		if (task == xprt->snd_task)
			return 1;
		goto out_sleep;
	}
	if (req == NULL) {
		xprt->snd_task = task;
		return 1;
	}
	if (FUNC5(XPRT_WRITE_SPACE, &xprt->state))
		goto out_unlock;
	if (!FUNC7(xprt)) {
		xprt->snd_task = task;
		return 1;
	}
out_unlock:
	FUNC6(xprt);
out_sleep:
	FUNC1("RPC: %5u failed to lock transport %p\n", task->tk_pid, xprt);
	task->tk_status = -EAGAIN;
	if (FUNC0(task))
		FUNC3(&xprt->sending, task, NULL,
				FUNC8(req));
	else
		FUNC2(&xprt->sending, task, NULL);
	return 0;
}