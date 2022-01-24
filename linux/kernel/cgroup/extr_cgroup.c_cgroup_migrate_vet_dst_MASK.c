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
struct cgroup {scalar_t__ subtree_control; int /*<<< orphan*/  dom_cgrp; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct cgroup*) ; 
 scalar_t__ FUNC1 (struct cgroup*) ; 
 scalar_t__ FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup*) ; 

int FUNC5(struct cgroup *dst_cgrp)
{
	/* v1 doesn't have any restriction */
	if (!FUNC4(dst_cgrp))
		return 0;

	/* verify @dst_cgrp can host resources */
	if (!FUNC3(dst_cgrp->dom_cgrp))
		return -EOPNOTSUPP;

	/* mixables don't care */
	if (FUNC1(dst_cgrp))
		return 0;

	/*
	 * If @dst_cgrp is already or can become a thread root or is
	 * threaded, it doesn't matter.
	 */
	if (FUNC0(dst_cgrp) || FUNC2(dst_cgrp))
		return 0;

	/* apply no-internal-process constraint */
	if (dst_cgrp->subtree_control)
		return -EBUSY;

	return 0;
}