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
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int /*<<< orphan*/  m_ddev_targp; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_SSB_REF ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_sb_buf_ops ; 
 int FUNC5 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**,int /*<<< orphan*/ *) ; 

int
FUNC6(
	struct xfs_mount	*mp,
	struct xfs_trans	*tp,
	xfs_agnumber_t		agno,
	struct xfs_buf		**bpp)
{
	struct xfs_buf		*bp;
	int			error;

	FUNC0(agno != 0 && agno != NULLAGNUMBER);
	error = FUNC5(mp, tp, mp->m_ddev_targp,
			FUNC1(mp, agno, FUNC3(mp)),
			FUNC2(mp, 1), 0, &bp, &xfs_sb_buf_ops);
	if (error)
		return error;
	FUNC4(bp, XFS_SSB_REF);
	*bpp = bp;
	return 0;
}