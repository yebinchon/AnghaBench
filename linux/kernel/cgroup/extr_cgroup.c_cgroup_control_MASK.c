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
typedef  int u16 ;
struct cgroup {int subtree_control; TYPE_1__* root; } ;
struct TYPE_2__ {int subsys_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cgroup*) ; 
 scalar_t__ FUNC1 (struct cgroup*) ; 
 struct cgroup* FUNC2 (struct cgroup*) ; 
 int cgrp_dfl_implicit_ss_mask ; 
 int cgrp_dfl_inhibit_ss_mask ; 
 int cgrp_dfl_threaded_ss_mask ; 

__attribute__((used)) static u16 FUNC3(struct cgroup *cgrp)
{
	struct cgroup *parent = FUNC2(cgrp);
	u16 root_ss_mask = cgrp->root->subsys_mask;

	if (parent) {
		u16 ss_mask = parent->subtree_control;

		/* threaded cgroups can only have threaded controllers */
		if (FUNC0(cgrp))
			ss_mask &= cgrp_dfl_threaded_ss_mask;
		return ss_mask;
	}

	if (FUNC1(cgrp))
		root_ss_mask &= ~(cgrp_dfl_inhibit_ss_mask |
				  cgrp_dfl_implicit_ss_mask);
	return root_ss_mask;
}