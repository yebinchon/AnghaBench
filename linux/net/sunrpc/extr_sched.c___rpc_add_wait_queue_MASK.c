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
struct rpc_wait_queue {int /*<<< orphan*/  qlen; int /*<<< orphan*/ * tasks; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/  timer_list; } ;
struct TYPE_4__ {TYPE_1__ tk_wait; } ;
struct rpc_task {int /*<<< orphan*/  tk_pid; struct rpc_wait_queue* tk_waitqueue; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct rpc_wait_queue*) ; 
 scalar_t__ FUNC2 (struct rpc_task*) ; 
 scalar_t__ FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,struct rpc_wait_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct rpc_wait_queue *queue,
		struct rpc_task *task,
		unsigned char queue_priority)
{
	FUNC4(FUNC2(task));
	if (FUNC2(task))
		return;

	FUNC0(&task->u.tk_wait.timer_list);
	if (FUNC1(queue))
		FUNC5(queue, task, queue_priority);
	else if (FUNC3(task))
		FUNC7(&task->u.tk_wait.list, &queue->tasks[0]);
	else
		FUNC8(&task->u.tk_wait.list, &queue->tasks[0]);
	task->tk_waitqueue = queue;
	queue->qlen++;
	/* barrier matches the read in rpc_wake_up_task_queue_locked() */
	FUNC11();
	FUNC10(task);

	FUNC6("RPC: %5u added to queue %p \"%s\"\n",
			task->tk_pid, queue, FUNC9(queue));
}