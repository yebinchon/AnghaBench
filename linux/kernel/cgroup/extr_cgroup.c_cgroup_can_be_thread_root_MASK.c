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
struct cgroup {int subtree_control; scalar_t__ nr_populated_domain_children; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cgroup*) ; 
 scalar_t__ FUNC1 (struct cgroup*) ; 
 int cgrp_dfl_threaded_ss_mask ; 

__attribute__((used)) static bool FUNC2(struct cgroup *cgrp)
{
	/* mixables don't care */
	if (FUNC0(cgrp))
		return true;

	/* domain roots can't be nested under threaded */
	if (FUNC1(cgrp))
		return false;

	/* can only have either domain or threaded children */
	if (cgrp->nr_populated_domain_children)
		return false;

	/* and no domain controllers can be enabled */
	if (cgrp->subtree_control & ~cgrp_dfl_threaded_ss_mask)
		return false;

	return true;
}