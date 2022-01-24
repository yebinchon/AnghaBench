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
struct rpc_task {int /*<<< orphan*/  tk_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*,struct rpc_wait_queue*) ; 

__attribute__((used)) static void FUNC4(struct rpc_wait_queue *q,
		struct rpc_task *task,
		unsigned char queue_priority)
{
	FUNC1("RPC: %5u sleep_on(queue \"%s\" time %lu)\n",
			task->tk_pid, FUNC2(q), jiffies);

	FUNC3(task, q);

	FUNC0(q, task, queue_priority);

}