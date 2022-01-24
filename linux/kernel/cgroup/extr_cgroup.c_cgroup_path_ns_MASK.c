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
struct cgroup_namespace {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cgroup_mutex ; 
 int FUNC0 (struct cgroup*,char*,size_t,struct cgroup_namespace*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct cgroup *cgrp, char *buf, size_t buflen,
		   struct cgroup_namespace *ns)
{
	int ret;

	FUNC1(&cgroup_mutex);
	FUNC3(&css_set_lock);

	ret = FUNC0(cgrp, buf, buflen, ns);

	FUNC4(&css_set_lock);
	FUNC2(&cgroup_mutex);

	return ret;
}