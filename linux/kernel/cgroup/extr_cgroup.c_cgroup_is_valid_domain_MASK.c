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
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 scalar_t__ FUNC1 (struct cgroup*) ; 
 scalar_t__ FUNC2 (struct cgroup*) ; 
 struct cgroup* FUNC3 (struct cgroup*) ; 

__attribute__((used)) static bool FUNC4(struct cgroup *cgrp)
{
	/* the cgroup itself can be a thread root */
	if (FUNC2(cgrp))
		return false;

	/* but the ancestors can't be unless mixable */
	while ((cgrp = FUNC3(cgrp))) {
		if (!FUNC0(cgrp) && FUNC1(cgrp))
			return false;
		if (FUNC2(cgrp))
			return false;
	}

	return true;
}