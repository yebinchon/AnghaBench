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
struct cpuset {int use_parent_ecpus; int /*<<< orphan*/  flags; int /*<<< orphan*/  child_ecpus_count; } ;
struct cgroup_subsys_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ONLINE ; 
 int /*<<< orphan*/  CS_SCHED_LOAD_BALANCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuset_cgrp_subsys ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 struct cpuset* FUNC3 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct cpuset*) ; 
 scalar_t__ FUNC6 (struct cpuset*) ; 
 struct cpuset* FUNC7 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cpuset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct cgroup_subsys_state *css)
{
	struct cpuset *cs = FUNC3(css);

	FUNC4();
	FUNC8(&cpuset_rwsem);

	if (FUNC5(cs))
		FUNC12(cs, 0);

	if (!FUNC0(cpuset_cgrp_subsys) &&
	    FUNC6(cs))
		FUNC11(CS_SCHED_LOAD_BALANCE, cs, 0);

	if (cs->use_parent_ecpus) {
		struct cpuset *parent = FUNC7(cs);

		cs->use_parent_ecpus = false;
		parent->child_ecpus_count--;
	}

	FUNC2();
	FUNC1(CS_ONLINE, &cs->flags);

	FUNC9(&cpuset_rwsem);
	FUNC10();
}