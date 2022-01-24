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
struct rpc_wait_queue {int /*<<< orphan*/  lock; } ;
struct rpc_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_wait_queue*,struct rpc_task*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct rpc_wait_queue *queue,
		struct rpc_task *task, int status)
{
	if (!FUNC0(task))
		return;
	FUNC2(&queue->lock);
	FUNC1(queue, task, status);
	FUNC3(&queue->lock);
}