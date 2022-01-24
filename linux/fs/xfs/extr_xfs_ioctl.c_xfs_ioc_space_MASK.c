#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int l_whence; scalar_t__ l_start; scalar_t__ l_len; } ;
typedef  TYPE_2__ xfs_flock64_t ;
typedef  int uint ;
struct xfs_inode {int dummy; } ;
struct inode {int i_flags; TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct iattr {scalar_t__ ia_size; int /*<<< orphan*/  ia_valid; } ;
struct file {int f_mode; int f_flags; int /*<<< orphan*/  f_pos; } ;
typedef  enum xfs_prealloc_flags { ____Placeholder_xfs_prealloc_flags } xfs_prealloc_flags ;
struct TYPE_4__ {scalar_t__ s_maxbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_SIZE ; 
 int /*<<< orphan*/  BREAK_UNMAP ; 
 int EBADF ; 
 int EINVAL ; 
 int EPERM ; 
 int FMODE_NOCMTIME ; 
 int FMODE_WRITE ; 
 int O_DSYNC ; 
 int S_APPEND ; 
 int S_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_BMAPI_PREALLOC ; 
 struct xfs_inode* FUNC2 (struct inode*) ; 
#define  XFS_IOC_ALLOCSP 136 
#define  XFS_IOC_ALLOCSP64 135 
#define  XFS_IOC_FREESP 134 
#define  XFS_IOC_FREESP64 133 
#define  XFS_IOC_RESVSP 132 
#define  XFS_IOC_RESVSP64 131 
#define  XFS_IOC_UNRESVSP 130 
#define  XFS_IOC_UNRESVSP64 129 
#define  XFS_IOC_ZERO_RANGE 128 
 int XFS_IOLOCK_EXCL ; 
 scalar_t__ FUNC3 (struct xfs_inode*) ; 
 int XFS_MMAPLOCK_EXCL ; 
 int XFS_PREALLOC_CLEAR ; 
 int XFS_PREALLOC_INVISIBLE ; 
 int XFS_PREALLOC_SET ; 
 int XFS_PREALLOC_SYNC ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int FUNC7 (struct file*) ; 
 int FUNC8 (struct xfs_inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_inode*,int) ; 
 int FUNC13 (struct xfs_inode*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct iattr*) ; 
 int FUNC15 (struct xfs_inode*,scalar_t__,scalar_t__) ; 

int
FUNC16(
	struct file		*filp,
	unsigned int		cmd,
	xfs_flock64_t		*bf)
{
	struct inode		*inode = FUNC5(filp);
	struct xfs_inode	*ip = FUNC2(inode);
	struct iattr		iattr;
	enum xfs_prealloc_flags	flags = 0;
	uint			iolock = XFS_IOLOCK_EXCL | XFS_MMAPLOCK_EXCL;
	int			error;

	if (inode->i_flags & (S_IMMUTABLE|S_APPEND))
		return -EPERM;

	if (!(filp->f_mode & FMODE_WRITE))
		return -EBADF;

	if (!FUNC1(inode->i_mode))
		return -EINVAL;

	if (filp->f_flags & O_DSYNC)
		flags |= XFS_PREALLOC_SYNC;
	if (filp->f_mode & FMODE_NOCMTIME)
		flags |= XFS_PREALLOC_INVISIBLE;

	error = FUNC7(filp);
	if (error)
		return error;

	FUNC11(ip, iolock);
	error = FUNC9(inode, &iolock, BREAK_UNMAP);
	if (error)
		goto out_unlock;

	switch (bf->l_whence) {
	case 0: /*SEEK_SET*/
		break;
	case 1: /*SEEK_CUR*/
		bf->l_start += filp->f_pos;
		break;
	case 2: /*SEEK_END*/
		bf->l_start += FUNC3(ip);
		break;
	default:
		error = -EINVAL;
		goto out_unlock;
	}

	/*
	 * length of <= 0 for resv/unresv/zero is invalid.  length for
	 * alloc/free is ignored completely and we have no idea what userspace
	 * might have set it to, so set it to zero to allow range
	 * checks to pass.
	 */
	switch (cmd) {
	case XFS_IOC_ZERO_RANGE:
	case XFS_IOC_RESVSP:
	case XFS_IOC_RESVSP64:
	case XFS_IOC_UNRESVSP:
	case XFS_IOC_UNRESVSP64:
		if (bf->l_len <= 0) {
			error = -EINVAL;
			goto out_unlock;
		}
		break;
	default:
		bf->l_len = 0;
		break;
	}

	if (bf->l_start < 0 ||
	    bf->l_start > inode->i_sb->s_maxbytes ||
	    bf->l_start + bf->l_len < 0 ||
	    bf->l_start + bf->l_len >= inode->i_sb->s_maxbytes) {
		error = -EINVAL;
		goto out_unlock;
	}

	switch (cmd) {
	case XFS_IOC_ZERO_RANGE:
		flags |= XFS_PREALLOC_SET;
		error = FUNC15(ip, bf->l_start, bf->l_len);
		break;
	case XFS_IOC_RESVSP:
	case XFS_IOC_RESVSP64:
		flags |= XFS_PREALLOC_SET;
		error = FUNC8(ip, bf->l_start, bf->l_len,
						XFS_BMAPI_PREALLOC);
		break;
	case XFS_IOC_UNRESVSP:
	case XFS_IOC_UNRESVSP64:
		error = FUNC10(ip, bf->l_start, bf->l_len);
		break;
	case XFS_IOC_ALLOCSP:
	case XFS_IOC_ALLOCSP64:
	case XFS_IOC_FREESP:
	case XFS_IOC_FREESP64:
		flags |= XFS_PREALLOC_CLEAR;
		if (bf->l_start > FUNC3(ip)) {
			error = FUNC8(ip, FUNC3(ip),
					bf->l_start - FUNC3(ip), 0);
			if (error)
				goto out_unlock;
		}

		iattr.ia_valid = ATTR_SIZE;
		iattr.ia_size = bf->l_start;

		error = FUNC14(FUNC4(filp), &iattr);
		break;
	default:
		FUNC0(0);
		error = -EINVAL;
	}

	if (error)
		goto out_unlock;

	error = FUNC13(ip, flags);

out_unlock:
	FUNC12(ip, iolock);
	FUNC6(filp);
	return error;
}