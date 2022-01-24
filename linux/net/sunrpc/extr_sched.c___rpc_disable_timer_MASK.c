#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dwork; int /*<<< orphan*/  list; } ;
struct rpc_wait_queue {TYPE_1__ timer_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  timer_list; } ;
struct TYPE_6__ {TYPE_2__ tk_wait; } ;
struct rpc_task {TYPE_3__ u; scalar_t__ tk_timeout; int /*<<< orphan*/  tk_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rpc_wait_queue *queue, struct rpc_task *task)
{
	if (FUNC3(&task->u.tk_wait.timer_list))
		return;
	FUNC1("RPC: %5u disabling timer\n", task->tk_pid);
	task->tk_timeout = 0;
	FUNC2(&task->u.tk_wait.timer_list);
	if (FUNC3(&queue->timer_list.list))
		FUNC0(&queue->timer_list.dwork);
}