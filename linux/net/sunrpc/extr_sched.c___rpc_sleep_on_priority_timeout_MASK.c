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
struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int /*<<< orphan*/  tk_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_wait_queue*,struct rpc_task*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(struct rpc_wait_queue *q,
		struct rpc_task *task, unsigned long timeout,
		unsigned char queue_priority)
{
	if (FUNC2(timeout)) {
		FUNC1(q, task, queue_priority);
		FUNC0(q, task, timeout);
	} else
		task->tk_status = -ETIMEDOUT;
}