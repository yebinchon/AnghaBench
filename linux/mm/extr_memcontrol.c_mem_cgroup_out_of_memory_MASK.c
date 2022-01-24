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
struct oom_control {int order; int /*<<< orphan*/  gfp_mask; struct mem_cgroup* memcg; int /*<<< orphan*/ * nodemask; int /*<<< orphan*/ * zonelist; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  oom_lock ; 
 scalar_t__ FUNC2 (struct oom_control*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool FUNC4(struct mem_cgroup *memcg, gfp_t gfp_mask,
				     int order)
{
	struct oom_control oc = {
		.zonelist = NULL,
		.nodemask = NULL,
		.memcg = memcg,
		.gfp_mask = gfp_mask,
		.order = order,
	};
	bool ret;

	if (FUNC0(&oom_lock))
		return true;
	/*
	 * A few threads which were not waiting at mutex_lock_killable() can
	 * fail to bail out. Therefore, check again after holding oom_lock.
	 */
	ret = FUNC3() || FUNC2(&oc);
	FUNC1(&oom_lock);
	return ret;
}