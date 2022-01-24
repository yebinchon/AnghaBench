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
struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {int id; } ;
struct cgroup {struct cgroup_subsys_state self; } ;

/* Variables and functions */
 struct cgroup_subsys_state* FUNC0 (struct cgroup*,struct cgroup_subsys*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 struct cgroup* FUNC1 (struct cgroup*) ; 
 int FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cgroup_subsys_state *FUNC4(struct cgroup *cgrp,
							struct cgroup_subsys *ss)
{
	FUNC3(&cgroup_mutex);

	if (!ss)
		return &cgrp->self;

	/*
	 * This function is used while updating css associations and thus
	 * can't test the csses directly.  Test ss_mask.
	 */
	while (!(FUNC2(cgrp) & (1 << ss->id))) {
		cgrp = FUNC1(cgrp);
		if (!cgrp)
			return NULL;
	}

	return FUNC0(cgrp, ss);
}