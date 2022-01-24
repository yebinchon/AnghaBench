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
struct task_struct {int dummy; } ;
struct cgroup_root {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cgroup_hierarchy_idr ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int FUNC0 (struct cgroup*,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  css_set_lock ; 
 struct cgroup_root* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  init_cgroup_ns ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,size_t) ; 
 struct cgroup* FUNC7 (struct task_struct*,struct cgroup_root*) ; 

int FUNC8(struct task_struct *task, char *buf, size_t buflen)
{
	struct cgroup_root *root;
	struct cgroup *cgrp;
	int hierarchy_id = 1;
	int ret;

	FUNC2(&cgroup_mutex);
	FUNC4(&css_set_lock);

	root = FUNC1(&cgroup_hierarchy_idr, &hierarchy_id);

	if (root) {
		cgrp = FUNC7(task, root);
		ret = FUNC0(cgrp, buf, buflen, &init_cgroup_ns);
	} else {
		/* if no hierarchy exists, everyone is in "/" */
		ret = FUNC6(buf, "/", buflen);
	}

	FUNC5(&css_set_lock);
	FUNC3(&cgroup_mutex);
	return ret;
}