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
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
struct cgroup {TYPE_1__* root; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  release_agent_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t ENODEV ; 
 int PATH_MAX ; 
 struct cgroup* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_agent_path_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct kernfs_open_file *of,
					  char *buf, size_t nbytes, loff_t off)
{
	struct cgroup *cgrp;

	FUNC0(sizeof(cgrp->root->release_agent_path) < PATH_MAX);

	cgrp = FUNC1(of->kn, false);
	if (!cgrp)
		return -ENODEV;
	FUNC3(&release_agent_path_lock);
	FUNC5(cgrp->root->release_agent_path, FUNC6(buf),
		sizeof(cgrp->root->release_agent_path));
	FUNC4(&release_agent_path_lock);
	FUNC2(of->kn);
	return nbytes;
}