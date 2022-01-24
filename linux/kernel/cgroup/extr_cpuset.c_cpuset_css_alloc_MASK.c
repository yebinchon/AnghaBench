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
struct cgroup_subsys_state {int dummy; } ;
struct cpuset {int relax_domain_level; struct cgroup_subsys_state css; int /*<<< orphan*/  fmeter; int /*<<< orphan*/  effective_mems; int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct cgroup_subsys_state css; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SCHED_LOAD_BALANCE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cgroup_subsys_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct cpuset*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*) ; 
 struct cpuset* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ top_cpuset ; 

__attribute__((used)) static struct cgroup_subsys_state *
FUNC7(struct cgroup_subsys_state *parent_css)
{
	struct cpuset *cs;

	if (!parent_css)
		return &top_cpuset.css;

	cs = FUNC4(sizeof(*cs), GFP_KERNEL);
	if (!cs)
		return FUNC0(-ENOMEM);

	if (FUNC1(cs, NULL)) {
		FUNC3(cs);
		return FUNC0(-ENOMEM);
	}

	FUNC6(CS_SCHED_LOAD_BALANCE, &cs->flags);
	FUNC5(cs->mems_allowed);
	FUNC5(cs->effective_mems);
	FUNC2(&cs->fmeter);
	cs->relax_domain_level = -1;

	return &cs->css;
}