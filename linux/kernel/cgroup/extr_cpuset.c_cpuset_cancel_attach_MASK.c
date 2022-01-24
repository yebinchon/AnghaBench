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
struct cgroup_taskset {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  attach_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup_taskset*,struct cgroup_subsys_state**) ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 TYPE_1__* FUNC1 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cgroup_taskset *tset)
{
	struct cgroup_subsys_state *css;

	FUNC0(tset, &css);

	FUNC2(&cpuset_rwsem);
	FUNC1(css)->attach_in_progress--;
	FUNC3(&cpuset_rwsem);
}