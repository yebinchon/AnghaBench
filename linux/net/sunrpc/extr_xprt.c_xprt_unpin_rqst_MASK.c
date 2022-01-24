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
struct rpc_rqst {int /*<<< orphan*/  rq_pin; TYPE_1__* rq_task; } ;
struct TYPE_2__ {int /*<<< orphan*/  tk_runstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_MSG_PIN_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rpc_rqst *req)
{
	if (!FUNC2(RPC_TASK_MSG_PIN_WAIT, &req->rq_task->tk_runstate)) {
		FUNC0(&req->rq_pin);
		return;
	}
	if (FUNC1(&req->rq_pin))
		FUNC3(&req->rq_pin);
}