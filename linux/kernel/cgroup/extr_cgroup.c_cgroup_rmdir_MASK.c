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
struct kernfs_node {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cgroup*) ; 
 int FUNC1 (struct cgroup*) ; 
 struct cgroup* FUNC2 (struct kernfs_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  rmdir ; 

int FUNC4(struct kernfs_node *kn)
{
	struct cgroup *cgrp;
	int ret = 0;

	cgrp = FUNC2(kn, false);
	if (!cgrp)
		return 0;

	ret = FUNC1(cgrp);
	if (!ret)
		FUNC0(rmdir, cgrp);

	FUNC3(kn);
	return ret;
}