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
struct rpc_task {int /*<<< orphan*/  tk_timeout; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 

unsigned long
FUNC2(const struct rpc_task *task)
{
	unsigned long timeout = FUNC0(task->tk_timeout);

	if (timeout != 0) {
		unsigned long now = jiffies;
		if (FUNC1(now, timeout))
			return timeout - now;
	}
	return 0;
}