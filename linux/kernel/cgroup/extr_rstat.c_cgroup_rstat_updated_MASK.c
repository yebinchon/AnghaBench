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
struct cgroup_rstat_cpu {struct cgroup* updated_children; struct cgroup* updated_next; } ;
struct cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  raw_spinlock_t ;

/* Variables and functions */
 struct cgroup* FUNC0 (struct cgroup*) ; 
 struct cgroup_rstat_cpu* FUNC1 (struct cgroup*,int) ; 
 int /*<<< orphan*/  cgroup_rstat_cpu_lock ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct cgroup *cgrp, int cpu)
{
	raw_spinlock_t *cpu_lock = FUNC2(&cgroup_rstat_cpu_lock, cpu);
	struct cgroup *parent;
	unsigned long flags;

	/* nothing to do for root */
	if (!FUNC0(cgrp))
		return;

	/*
	 * Paired with the one in cgroup_rstat_cpu_pop_upated().  Either we
	 * see NULL updated_next or they see our updated stat.
	 */
	FUNC5();

	/*
	 * Because @parent's updated_children is terminated with @parent
	 * instead of NULL, we can tell whether @cgrp is on the list by
	 * testing the next pointer for NULL.
	 */
	if (FUNC1(cgrp, cpu)->updated_next)
		return;

	FUNC3(cpu_lock, flags);

	/* put @cgrp and all ancestors on the corresponding updated lists */
	for (parent = FUNC0(cgrp); parent;
	     cgrp = parent, parent = FUNC0(cgrp)) {
		struct cgroup_rstat_cpu *rstatc = FUNC1(cgrp, cpu);
		struct cgroup_rstat_cpu *prstatc = FUNC1(parent, cpu);

		/*
		 * Both additions and removals are bottom-up.  If a cgroup
		 * is already in the tree, all ancestors are.
		 */
		if (rstatc->updated_next)
			break;

		rstatc->updated_next = prstatc->updated_children;
		prstatc->updated_children = cgrp;
	}

	FUNC4(cpu_lock, flags);
}