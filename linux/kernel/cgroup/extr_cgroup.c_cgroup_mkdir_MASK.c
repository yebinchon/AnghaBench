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
typedef  int /*<<< orphan*/  umode_t ;
struct kernfs_node {int /*<<< orphan*/  self; struct kernfs_node* kn; } ;
struct cgroup {int /*<<< orphan*/  self; struct cgroup* kn; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kernfs_node*) ; 
 int FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC5 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC7 (struct kernfs_node*,int) ; 
 int FUNC8 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct kernfs_node*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC12 (struct kernfs_node*,char const*,int /*<<< orphan*/ ,struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct kernfs_node*) ; 
 int /*<<< orphan*/  mkdir ; 
 scalar_t__ FUNC14 (char const*,char) ; 

int FUNC15(struct kernfs_node *parent_kn, const char *name, umode_t mode)
{
	struct cgroup *parent, *cgrp;
	struct kernfs_node *kn;
	int ret;

	/* do not accept '\n' to prevent making /proc/<pid>/cgroup unparsable */
	if (FUNC14(name, '\n'))
		return -EINVAL;

	parent = FUNC7(parent_kn, false);
	if (!parent)
		return -ENODEV;

	if (!FUNC4(parent)) {
		ret = -EAGAIN;
		goto out_unlock;
	}

	cgrp = FUNC5(parent);
	if (FUNC0(cgrp)) {
		ret = FUNC1(cgrp);
		goto out_unlock;
	}

	/* create the directory */
	kn = FUNC12(parent->kn, name, mode, cgrp);
	if (FUNC0(kn)) {
		ret = FUNC1(kn);
		goto out_destroy;
	}
	cgrp->kn = kn;

	/*
	 * This extra ref will be put in cgroup_free_fn() and guarantees
	 * that @cgrp->kn is always accessible.
	 */
	FUNC13(kn);

	ret = FUNC8(kn);
	if (ret)
		goto out_destroy;

	ret = FUNC10(&cgrp->self);
	if (ret)
		goto out_destroy;

	ret = FUNC3(cgrp);
	if (ret)
		goto out_destroy;

	FUNC2(mkdir, cgrp);

	/* let's create and online css's */
	FUNC11(kn);

	ret = 0;
	goto out_unlock;

out_destroy:
	FUNC6(cgrp);
out_unlock:
	FUNC9(parent_kn);
	return ret;
}