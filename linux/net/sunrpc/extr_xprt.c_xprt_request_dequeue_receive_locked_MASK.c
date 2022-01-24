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
struct rpc_task {int /*<<< orphan*/  tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_NEED_RECV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rpc_rqst*) ; 

__attribute__((used)) static void
FUNC2(struct rpc_task *task)
{
	struct rpc_rqst *req = task->tk_rqstp;

	if (FUNC0(RPC_TASK_NEED_RECV, &task->tk_runstate))
		FUNC1(req->rq_xprt, req);
}