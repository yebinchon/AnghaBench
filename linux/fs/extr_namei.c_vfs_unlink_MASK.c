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
struct inode {TYPE_1__* i_op; } ;
struct dentry {int d_flags; struct inode* d_inode; } ;
struct TYPE_2__ {int (* unlink ) (struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int FUNC8 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct dentry*) ; 
 int FUNC10 (struct inode*,struct dentry*) ; 
 int FUNC11 (struct inode*,struct inode**) ; 

int FUNC12(struct inode *dir, struct dentry *dentry, struct inode **delegated_inode)
{
	struct inode *target = dentry->d_inode;
	int error = FUNC8(dir, dentry, 0);

	if (error)
		return error;

	if (!dir->i_op->unlink)
		return -EPERM;

	FUNC5(target);
	if (FUNC7(dentry))
		error = -EBUSY;
	else {
		error = FUNC9(dir, dentry);
		if (!error) {
			error = FUNC11(target, delegated_inode);
			if (error)
				goto out;
			error = dir->i_op->unlink(dir, dentry);
			if (!error) {
				FUNC2(dentry);
				FUNC1(dentry);
				FUNC4(dir, dentry);
			}
		}
	}
out:
	FUNC6(target);

	/* We don't d_delete() NFS sillyrenamed files--they still exist. */
	if (!error && !(dentry->d_flags & DCACHE_NFSFS_RENAMED)) {
		FUNC3(target);
		FUNC0(dentry);
	}

	return error;
}