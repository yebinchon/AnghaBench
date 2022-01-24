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
struct mem_cgroup {int dummy; } ;
struct TYPE_2__ {scalar_t__ moving_task; int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ mc ; 
 scalar_t__ FUNC2 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static bool FUNC5(struct mem_cgroup *memcg)
{
	if (mc.moving_task && current != mc.moving_task) {
		if (FUNC2(memcg)) {
			FUNC0(wait);
			FUNC3(&mc.waitq, &wait, TASK_INTERRUPTIBLE);
			/* moving charge context might have finished. */
			if (mc.moving_task)
				FUNC4();
			FUNC1(&mc.waitq, &wait);
			return true;
		}
	}
	return false;
}