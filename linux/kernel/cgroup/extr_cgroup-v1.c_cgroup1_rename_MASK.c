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
struct kernfs_node {struct kernfs_node* parent; struct cgroup* priv; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOTDIR ; 
 scalar_t__ KERNFS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cgroup*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int FUNC2 (struct kernfs_node*,struct kernfs_node*,char const*) ; 
 scalar_t__ FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rename ; 

__attribute__((used)) static int FUNC7(struct kernfs_node *kn, struct kernfs_node *new_parent,
			  const char *new_name_str)
{
	struct cgroup *cgrp = kn->priv;
	int ret;

	if (FUNC3(kn) != KERNFS_DIR)
		return -ENOTDIR;
	if (kn->parent != new_parent)
		return -EIO;

	/*
	 * We're gonna grab cgroup_mutex which nests outside kernfs
	 * active_ref.  kernfs_rename() doesn't require active_ref
	 * protection.  Break them before grabbing cgroup_mutex.
	 */
	FUNC1(new_parent);
	FUNC1(kn);

	FUNC5(&cgroup_mutex);

	ret = FUNC2(kn, new_parent, new_name_str);
	if (!ret)
		FUNC0(rename, cgrp);

	FUNC6(&cgroup_mutex);

	FUNC4(kn);
	FUNC4(new_parent);
	return ret;
}