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
struct inode {int /*<<< orphan*/  i_gid; } ;
struct iattr {unsigned int ia_valid; int /*<<< orphan*/  ia_mode; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_size; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 unsigned int ATTR_ATIME_SET ; 
 unsigned int ATTR_FORCE ; 
 unsigned int ATTR_GID ; 
 unsigned int ATTR_KILL_PRIV ; 
 unsigned int ATTR_MODE ; 
 unsigned int ATTR_MTIME_SET ; 
 unsigned int ATTR_SIZE ; 
 unsigned int ATTR_TIMES_SET ; 
 unsigned int ATTR_UID ; 
 int /*<<< orphan*/  CAP_FSETID ; 
 int EPERM ; 
 int /*<<< orphan*/  S_ISGID ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct dentry*) ; 

int FUNC8(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC3(dentry);
	unsigned int ia_valid = attr->ia_valid;

	/*
	 * First check size constraints.  These can't be overriden using
	 * ATTR_FORCE.
	 */
	if (ia_valid & ATTR_SIZE) {
		int error = FUNC5(inode, attr->ia_size);
		if (error)
			return error;
	}

	/* If force is set do it anyway. */
	if (ia_valid & ATTR_FORCE)
		goto kill_priv;

	/* Make sure a caller can chown. */
	if ((ia_valid & ATTR_UID) && !FUNC2(inode, attr->ia_uid))
		return -EPERM;

	/* Make sure caller can chgrp. */
	if ((ia_valid & ATTR_GID) && !FUNC1(inode, attr->ia_gid))
		return -EPERM;

	/* Make sure a caller can chmod. */
	if (ia_valid & ATTR_MODE) {
		if (!FUNC6(inode))
			return -EPERM;
		/* Also check the setgid bit! */
		if (!FUNC4((ia_valid & ATTR_GID) ? attr->ia_gid :
				inode->i_gid) &&
		    !FUNC0(inode, CAP_FSETID))
			attr->ia_mode &= ~S_ISGID;
	}

	/* Check for setting the inode time. */
	if (ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET)) {
		if (!FUNC6(inode))
			return -EPERM;
	}

kill_priv:
	/* User has permission for the change */
	if (ia_valid & ATTR_KILL_PRIV) {
		int error;

		error = FUNC7(dentry);
		if (error)
			return error;
	}

	return 0;
}