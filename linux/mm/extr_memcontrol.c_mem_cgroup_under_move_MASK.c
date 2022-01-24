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
struct TYPE_2__ {int /*<<< orphan*/  lock; struct mem_cgroup* to; struct mem_cgroup* from; } ;

/* Variables and functions */
 TYPE_1__ mc ; 
 scalar_t__ FUNC0 (struct mem_cgroup*,struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct mem_cgroup *memcg)
{
	struct mem_cgroup *from;
	struct mem_cgroup *to;
	bool ret = false;
	/*
	 * Unlike task_move routines, we access mc.to, mc.from not under
	 * mutual exclusion by cgroup_mutex. Here, we take spinlock instead.
	 */
	FUNC1(&mc.lock);
	from = mc.from;
	to = mc.to;
	if (!from)
		goto unlock;

	ret = FUNC0(from, memcg) ||
		FUNC0(to, memcg);
unlock:
	FUNC2(&mc.lock);
	return ret;
}