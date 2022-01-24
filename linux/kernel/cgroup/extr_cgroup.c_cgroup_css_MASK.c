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
struct cgroup_subsys {size_t id; } ;
struct cgroup {struct cgroup_subsys_state self; int /*<<< orphan*/ * subsys; } ;

/* Variables and functions */
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cgroup_subsys_state* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cgroup_subsys_state *FUNC2(struct cgroup *cgrp,
					      struct cgroup_subsys *ss)
{
	if (ss)
		return FUNC1(cgrp->subsys[ss->id],
					FUNC0(&cgroup_mutex));
	else
		return &cgrp->self;
}