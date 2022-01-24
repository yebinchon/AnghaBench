#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sb_blocksize; } ;
struct xfs_mount {int m_flags; TYPE_2__ m_sb; } ;
struct TYPE_5__ {int di_flags2; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct xfs_inode*) ; 
 int XFS_DIFLAG2_DAX ; 
 int XFS_MOUNT_DAX ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (struct xfs_inode*) ; 

__attribute__((used)) static bool
FUNC4(
	struct xfs_inode	*ip)
{
	struct xfs_mount	*mp = ip->i_mount;

	/* Only supported on non-reflinked files. */
	if (!FUNC0(FUNC1(ip)->i_mode) || FUNC3(ip))
		return false;

	/* DAX mount option or DAX iflag must be set. */
	if (!(mp->m_flags & XFS_MOUNT_DAX) &&
	    !(ip->i_d.di_flags2 & XFS_DIFLAG2_DAX))
		return false;

	/* Block size must match page size */
	if (mp->m_sb.sb_blocksize != PAGE_SIZE)
		return false;

	/* Device has to support DAX too. */
	return FUNC2(FUNC1(ip)) != NULL;
}