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
struct inode {int dummy; } ;
struct dentry {int d_flags; struct dentry* d_parent; } ;
struct TYPE_2__ {int (* remove ) (struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct dentry*) ; 
 int FUNC6 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct dentry*,int) ; 

__attribute__((used)) static int FUNC9(struct dentry *dentry)
{
	struct inode *dir = FUNC1(dentry->d_parent);
	struct inode *inode = FUNC1(dentry);
	int error = -EBUSY;
		
	FUNC2(VFS, "NFS: safe_remove(%pd2)\n", dentry);

	/* If the dentry was sillyrenamed, we simply call d_delete() */
	if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
		error = 0;
		goto out;
	}

	FUNC7(dir, dentry);
	if (inode != NULL) {
		error = FUNC0(dir)->remove(dir, dentry);
		if (error == 0)
			FUNC4(inode);
	} else
		error = FUNC0(dir)->remove(dir, dentry);
	if (error == -ENOENT)
		FUNC3(dentry);
	FUNC8(dir, dentry, error);
out:
	return error;
}