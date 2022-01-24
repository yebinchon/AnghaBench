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
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 struct cgroup_subsys_state* FUNC0 (struct cgroup*,struct cgroup_subsys*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct cgroup_subsys_state *FUNC4(struct cgroup *cgrp,
						     struct cgroup_subsys *ss)
{
	struct cgroup_subsys_state *css;

	FUNC2();
	css = FUNC0(cgrp, ss);
	if (css && !FUNC1(css))
		css = NULL;
	FUNC3();

	return css;
}