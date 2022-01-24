#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_xprt {TYPE_2__* ops; } ;
struct rpc_task {int /*<<< orphan*/  tk_action; TYPE_1__* tk_rqstp; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* rpcbind ) (struct rpc_task*) ;} ;
struct TYPE_3__ {struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  call_bind_status ; 
 int /*<<< orphan*/  call_connect ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 scalar_t__ FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 scalar_t__ FUNC4 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*) ; 

__attribute__((used)) static void
FUNC6(struct rpc_task *task)
{
	struct rpc_xprt *xprt = task->tk_rqstp->rq_xprt;

	if (FUNC2(task)) {
		FUNC1(task);
		return;
	}

	if (FUNC4(xprt)) {
		task->tk_action = call_connect;
		return;
	}

	FUNC0(task);

	task->tk_action = call_bind_status;
	if (!FUNC5(task))
		return;

	xprt->ops->rpcbind(task);
}