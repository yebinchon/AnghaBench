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
struct task_struct {int dummy; } ;
struct mem_cgroup {int /*<<< orphan*/  css; scalar_t__ oom_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  memory_cgrp_subsys ; 
 struct mem_cgroup* FUNC3 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct mem_cgroup* root_mem_cgroup ; 

struct mem_cgroup *FUNC6(struct task_struct *victim,
					    struct mem_cgroup *oom_domain)
{
	struct mem_cgroup *oom_group = NULL;
	struct mem_cgroup *memcg;

	if (!FUNC0(memory_cgrp_subsys))
		return NULL;

	if (!oom_domain)
		oom_domain = root_mem_cgroup;

	FUNC4();

	memcg = FUNC2(victim);
	if (memcg == root_mem_cgroup)
		goto out;

	/*
	 * Traverse the memory cgroup hierarchy from the victim task's
	 * cgroup up to the OOMing cgroup (or root) to find the
	 * highest-level memory cgroup with oom.group set.
	 */
	for (; memcg; memcg = FUNC3(memcg)) {
		if (memcg->oom_group)
			oom_group = memcg;

		if (memcg == oom_domain)
			break;
	}

	if (oom_group)
		FUNC1(&oom_group->css);
out:
	FUNC5();

	return oom_group;
}