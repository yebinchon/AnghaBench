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
struct path {int /*<<< orphan*/ * mnt; struct dentry* dentry; } ;
struct mount {int /*<<< orphan*/  mnt; int /*<<< orphan*/  mnt_mountpoint; struct mount* mnt_parent; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mount_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct path *path)
{
	struct mount *mnt = FUNC6(path->mnt);
	struct mount *parent;
	struct dentry *mountpoint;

	FUNC4(&mount_lock);
	parent = mnt->mnt_parent;
	if (parent == mnt) {
		FUNC5(&mount_lock);
		return 0;
	}
	FUNC2(&parent->mnt);
	mountpoint = FUNC0(mnt->mnt_mountpoint);
	FUNC5(&mount_lock);
	FUNC1(path->dentry);
	path->dentry = mountpoint;
	FUNC3(path->mnt);
	path->mnt = &parent->mnt;
	return 1;
}