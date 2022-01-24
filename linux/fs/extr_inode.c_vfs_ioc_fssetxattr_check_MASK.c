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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct fsxattr {int fsx_xflags; scalar_t__ fsx_projid; scalar_t__ fsx_extsize; scalar_t__ fsx_cowextsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_LINUX_IMMUTABLE ; 
 int EINVAL ; 
 int EPERM ; 
 int FS_XFLAG_APPEND ; 
 int FS_XFLAG_COWEXTSIZE ; 
 int FS_XFLAG_DAX ; 
 int FS_XFLAG_EXTSIZE ; 
 int FS_XFLAG_EXTSZINHERIT ; 
 int FS_XFLAG_IMMUTABLE ; 
 int FS_XFLAG_PROJINHERIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  init_user_ns ; 

int FUNC4(struct inode *inode, const struct fsxattr *old_fa,
			     struct fsxattr *fa)
{
	/*
	 * Can't modify an immutable/append-only file unless we have
	 * appropriate permission.
	 */
	if ((old_fa->fsx_xflags ^ fa->fsx_xflags) &
			(FS_XFLAG_IMMUTABLE | FS_XFLAG_APPEND) &&
	    !FUNC2(CAP_LINUX_IMMUTABLE))
		return -EPERM;

	/*
	 * Project Quota ID state is only allowed to change from within the init
	 * namespace. Enforce that restriction only if we are trying to change
	 * the quota ID state. Everything else is allowed in user namespaces.
	 */
	if (FUNC3() != &init_user_ns) {
		if (old_fa->fsx_projid != fa->fsx_projid)
			return -EINVAL;
		if ((old_fa->fsx_xflags ^ fa->fsx_xflags) &
				FS_XFLAG_PROJINHERIT)
			return -EINVAL;
	}

	/* Check extent size hints. */
	if ((fa->fsx_xflags & FS_XFLAG_EXTSIZE) && !FUNC1(inode->i_mode))
		return -EINVAL;

	if ((fa->fsx_xflags & FS_XFLAG_EXTSZINHERIT) &&
			!FUNC0(inode->i_mode))
		return -EINVAL;

	if ((fa->fsx_xflags & FS_XFLAG_COWEXTSIZE) &&
	    !FUNC1(inode->i_mode) && !FUNC0(inode->i_mode))
		return -EINVAL;

	/*
	 * It is only valid to set the DAX flag on regular files and
	 * directories on filesystems.
	 */
	if ((fa->fsx_xflags & FS_XFLAG_DAX) &&
	    !(FUNC1(inode->i_mode) || FUNC0(inode->i_mode)))
		return -EINVAL;

	/* Extent size hints of zero turn off the flags. */
	if (fa->fsx_extsize == 0)
		fa->fsx_xflags &= ~(FS_XFLAG_EXTSIZE | FS_XFLAG_EXTSZINHERIT);
	if (fa->fsx_cowextsize == 0)
		fa->fsx_xflags &= ~FS_XFLAG_COWEXTSIZE;

	return 0;
}