#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ wait_queue_head_t ;
struct wait_bit_key {int dummy; } ;
struct rpc_task {int /*<<< orphan*/  tk_count; int /*<<< orphan*/  tk_runstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_ACTIVE ; 
 int /*<<< orphan*/  TASK_NORMAL ; 
 struct wait_bit_key FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct wait_bit_key*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct rpc_task *task)
{
	void *m = &task->tk_runstate;
	wait_queue_head_t *wq = FUNC3(m, RPC_TASK_ACTIVE);
	struct wait_bit_key k = FUNC0(m, RPC_TASK_ACTIVE);
	unsigned long flags;
	int ret;

	FUNC7(task, NULL);

	FUNC5(&wq->lock, flags);
	FUNC4(RPC_TASK_ACTIVE, &task->tk_runstate);
	ret = FUNC2(&task->tk_count);
	if (FUNC8(wq))
		FUNC1(wq, TASK_NORMAL, &k);
	FUNC6(&wq->lock, flags);
	return ret;
}