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
struct TYPE_2__ {int /*<<< orphan*/  effective_mems; int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  effective_cpus; int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  callback_lock ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  node_possible_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ top_cpuset ; 

__attribute__((used)) static void FUNC6(struct cgroup_subsys_state *root_css)
{
	FUNC2(&cpuset_rwsem);
	FUNC4(&callback_lock);

	if (FUNC1()) {
		FUNC0(top_cpuset.cpus_allowed, cpu_possible_mask);
		top_cpuset.mems_allowed = node_possible_map;
	} else {
		FUNC0(top_cpuset.cpus_allowed,
			     top_cpuset.effective_cpus);
		top_cpuset.mems_allowed = top_cpuset.effective_mems;
	}

	FUNC5(&callback_lock);
	FUNC3(&cpuset_rwsem);
}