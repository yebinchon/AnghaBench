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
struct cgroup {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_NOTIFY_ON_RELEASE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(const struct cgroup *cgrp)
{
	return FUNC0(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);
}