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
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {TYPE_1__* rq_xprt; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  xprt_timer ; 

void FUNC2(struct rpc_task *task)
{
	struct rpc_rqst *req = task->tk_rqstp;

	FUNC0(&req->rq_xprt->pending, task, xprt_timer,
			FUNC1(req));
}