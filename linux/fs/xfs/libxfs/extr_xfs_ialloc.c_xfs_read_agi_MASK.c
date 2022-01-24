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
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_AGI_REF ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_BLFT_AGI_BUF ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  xfs_agi_buf_ops ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**,int /*<<< orphan*/ *) ; 

int
FUNC8(
	struct xfs_mount	*mp,	/* file system mount structure */
	struct xfs_trans	*tp,	/* transaction pointer */
	xfs_agnumber_t		agno,	/* allocation group number */
	struct xfs_buf		**bpp)	/* allocation group hdr buf */
{
	int			error;

	FUNC4(mp, agno);

	FUNC0(agno != NULLAGNUMBER);
	error = FUNC7(mp, tp, mp->m_ddev_targp,
			FUNC2(mp, agno, FUNC1(mp)),
			FUNC3(mp, 1), 0, bpp, &xfs_agi_buf_ops);
	if (error)
		return error;
	if (tp)
		FUNC6(tp, *bpp, XFS_BLFT_AGI_BUF);

	FUNC5(*bpp, XFS_AGI_REF);
	return 0;
}