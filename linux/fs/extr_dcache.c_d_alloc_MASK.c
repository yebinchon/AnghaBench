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
struct qstr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_subdirs; int /*<<< orphan*/  d_child; struct dentry* d_parent; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC5(struct dentry * parent, const struct qstr *name)
{
	struct dentry *dentry = FUNC0(parent->d_sb, name);
	if (!dentry)
		return NULL;
	FUNC3(&parent->d_lock);
	/*
	 * don't need child lock because it is not subject
	 * to concurrency here
	 */
	FUNC1(parent);
	dentry->d_parent = parent;
	FUNC2(&dentry->d_child, &parent->d_subdirs);
	FUNC4(&parent->d_lock);

	return dentry;
}