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
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct cgroup_subsys_state {struct cgroup* cgroup; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 struct cgroup* FUNC0 (struct cgroup_subsys_state*) ; 
 struct cgroup* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup*) ; 
 struct cgroup_subsys_state* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct file* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 

struct cgroup *FUNC8(int fd)
{
	struct cgroup_subsys_state *css;
	struct cgroup *cgrp;
	struct file *f;

	f = FUNC6(fd);
	if (!f)
		return FUNC1(-EBADF);

	css = FUNC5(f->f_path.dentry, NULL);
	FUNC7(f);
	if (FUNC2(css))
		return FUNC0(css);

	cgrp = css->cgroup;
	if (!FUNC3(cgrp)) {
		FUNC4(cgrp);
		return FUNC1(-EBADF);
	}

	return cgrp;
}