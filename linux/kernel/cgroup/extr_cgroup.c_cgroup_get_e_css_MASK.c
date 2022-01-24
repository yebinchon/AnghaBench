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
struct cgroup_subsys {size_t id; } ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup_subsys_state** subsys; } ;

/* Variables and functions */
 struct cgroup_subsys_state* FUNC0 (struct cgroup*,struct cgroup_subsys*) ; 
 struct cgroup* FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup_subsys_state*) ; 
 scalar_t__ FUNC3 (struct cgroup_subsys_state*) ; 
 TYPE_1__ init_css_set ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

struct cgroup_subsys_state *FUNC6(struct cgroup *cgrp,
					     struct cgroup_subsys *ss)
{
	struct cgroup_subsys_state *css;

	FUNC4();

	do {
		css = FUNC0(cgrp, ss);

		if (css && FUNC3(css))
			goto out_unlock;
		cgrp = FUNC1(cgrp);
	} while (cgrp);

	css = init_css_set.subsys[ss->id];
	FUNC2(css);
out_unlock:
	FUNC5();
	return css;
}