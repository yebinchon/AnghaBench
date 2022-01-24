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
typedef  int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_inode {int /*<<< orphan*/  i_pdquot; int /*<<< orphan*/  i_gdquot; int /*<<< orphan*/  i_udquot; int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 scalar_t__ FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*) ; 
 int XFS_QMOPT_ENOSPC ; 
 int XFS_QMOPT_FORCE_RES ; 
 int XFS_TRANS_DQ_RES_BLKS ; 
 int XFS_TRANS_DQ_RES_RTBLKS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_trans*,struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int) ; 

int
FUNC7(
	struct xfs_trans	*tp,
	struct xfs_inode	*ip,
	int64_t			nblks,
	long			ninos,
	uint			flags)
{
	struct xfs_mount	*mp = ip->i_mount;

	if (!FUNC3(mp) || !FUNC2(mp))
		return 0;
	if (FUNC1(mp))
		flags |= XFS_QMOPT_ENOSPC;

	FUNC0(!FUNC4(&mp->m_sb, ip->i_ino));

	FUNC0(FUNC5(ip, XFS_ILOCK_EXCL));
	FUNC0((flags & ~(XFS_QMOPT_FORCE_RES | XFS_QMOPT_ENOSPC)) ==
				XFS_TRANS_DQ_RES_RTBLKS ||
	       (flags & ~(XFS_QMOPT_FORCE_RES | XFS_QMOPT_ENOSPC)) ==
				XFS_TRANS_DQ_RES_BLKS);

	/*
	 * Reserve nblks against these dquots, with trans as the mediator.
	 */
	return FUNC6(tp, mp,
						ip->i_udquot, ip->i_gdquot,
						ip->i_pdquot,
						nblks, ninos, flags);
}