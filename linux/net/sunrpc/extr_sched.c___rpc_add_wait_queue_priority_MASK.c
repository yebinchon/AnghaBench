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
struct rpc_wait_queue {unsigned char maxpriority; int /*<<< orphan*/ * tasks; } ;
struct rpc_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_task*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct rpc_wait_queue *queue,
		struct rpc_task *task,
		unsigned char queue_priority)
{
	if (FUNC1(queue_priority > queue->maxpriority))
		queue_priority = queue->maxpriority;
	FUNC0(&queue->tasks[queue_priority], task);
}