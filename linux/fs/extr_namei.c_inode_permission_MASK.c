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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EACCES ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int MAY_WRITE ; 
 int FUNC2 (struct inode*,int) ; 
 int FUNC3 (struct inode*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,int) ; 
 int FUNC5 (struct inode*,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct inode *inode, int mask)
{
	int retval;

	retval = FUNC4(inode->i_sb, inode, mask);
	if (retval)
		return retval;

	if (FUNC6(mask & MAY_WRITE)) {
		/*
		 * Nobody gets write access to an immutable file.
		 */
		if (FUNC1(inode))
			return -EPERM;

		/*
		 * Updating mtime will likely cause i_uid and i_gid to be
		 * written back improperly if their true value is unknown
		 * to the vfs.
		 */
		if (FUNC0(inode))
			return -EACCES;
	}

	retval = FUNC3(inode, mask);
	if (retval)
		return retval;

	retval = FUNC2(inode, mask);
	if (retval)
		return retval;

	return FUNC5(inode, mask);
}