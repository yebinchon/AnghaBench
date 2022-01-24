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
struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct dentry*) ; 
 int FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*,int) ; 

void FUNC6(struct inode *dir, struct vfsmount *mnt,
			 struct dentry *dentry, int level)
{
	int err;

	if (!FUNC0(dentry) || level > 1) {
		FUNC3(dir, dentry);
		return;
	}

	err = FUNC4(dir, dentry);
	if (err) {
		struct path path = { .mnt = mnt, .dentry = dentry };

		FUNC2(dir);
		FUNC5(&path, level + 1);
		FUNC1(dir, I_MUTEX_PARENT);
		FUNC3(dir, dentry);
	}
}