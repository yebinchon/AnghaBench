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
struct cgroup {int subtree_control; scalar_t__ nr_threaded_children; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cgroup*) ; 
 scalar_t__ FUNC1 (struct cgroup*) ; 
 int cgrp_dfl_threaded_ss_mask ; 

bool FUNC2(struct cgroup *cgrp)
{
	/* thread root should be a domain */
	if (FUNC1(cgrp))
		return false;

	/* a domain w/ threaded children is a thread root */
	if (cgrp->nr_threaded_children)
		return true;

	/*
	 * A domain which has tasks and explicit threaded controllers
	 * enabled is a thread root.
	 */
	if (FUNC0(cgrp) &&
	    (cgrp->subtree_control & cgrp_dfl_threaded_ss_mask))
		return true;

	return false;
}