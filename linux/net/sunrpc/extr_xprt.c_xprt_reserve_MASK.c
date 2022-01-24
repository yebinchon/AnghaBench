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
struct rpc_task {int /*<<< orphan*/  tk_status; int /*<<< orphan*/ * tk_rqstp; struct rpc_xprt* tk_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_xprt*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_xprt*,struct rpc_task*) ; 

void FUNC2(struct rpc_task *task)
{
	struct rpc_xprt *xprt = task->tk_xprt;

	task->tk_status = 0;
	if (task->tk_rqstp != NULL)
		return;

	task->tk_status = -EAGAIN;
	if (!FUNC1(xprt, task))
		FUNC0(xprt, task);
}