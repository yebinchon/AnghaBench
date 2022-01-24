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
struct xfs_buf {int /*<<< orphan*/  b_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_AGF_REF ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  xfs_agf_buf_ops ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_buf**,int /*<<< orphan*/ *) ; 

int					/* error */
FUNC7(
	struct xfs_mount	*mp,	/* mount point structure */
	struct xfs_trans	*tp,	/* transaction pointer */
	xfs_agnumber_t		agno,	/* allocation group number */
	int			flags,	/* XFS_BUF_ */
	struct xfs_buf		**bpp)	/* buffer for the ag freelist header */
{
	int		error;

	FUNC4(mp, agno);

	FUNC0(agno != NULLAGNUMBER);
	error = FUNC6(
			mp, tp, mp->m_ddev_targp,
			FUNC2(mp, agno, FUNC1(mp)),
			FUNC3(mp, 1), flags, bpp, &xfs_agf_buf_ops);
	if (error)
		return error;
	if (!*bpp)
		return 0;

	FUNC0(!(*bpp)->b_error);
	FUNC5(*bpp, XFS_AGF_REF);
	return 0;
}