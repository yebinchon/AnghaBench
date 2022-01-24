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
typedef  scalar_t__ xfs_off_t ;
typedef  int uint ;
struct TYPE_2__ {int sb_blocklog; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BMAPI_PREALLOC ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*) ; 
 int FUNC3 (struct xfs_inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct xfs_inode*) ; 

int
FUNC6(
	struct xfs_inode	*ip,
	xfs_off_t		offset,
	xfs_off_t		len)
{
	struct xfs_mount	*mp = ip->i_mount;
	uint			blksize;
	int			error;

	FUNC2(ip);

	blksize = 1 << mp->m_sb.sb_blocklog;

	/*
	 * Punch a hole and prealloc the range. We use hole punch rather than
	 * unwritten extent conversion for two reasons:
	 *
	 * 1.) Hole punch handles partial block zeroing for us.
	 *
	 * 2.) If prealloc returns ENOSPC, the file range is still zero-valued
	 * by virtue of the hole punch.
	 */
	error = FUNC4(ip, offset, len);
	if (error || FUNC5(ip))
		return error;

	return FUNC3(ip, FUNC0(offset, blksize),
				     FUNC1(offset + len, blksize) -
				     FUNC0(offset, blksize),
				     XFS_BMAPI_PREALLOC);
}