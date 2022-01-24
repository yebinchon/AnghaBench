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
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_scrub {int /*<<< orphan*/  tp; TYPE_1__* sm; struct xfs_mount* mp; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_buf {int /*<<< orphan*/  b_length; } ;
struct TYPE_2__ {scalar_t__ sm_agno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  XFS_BLFT_SB_BUF ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ,scalar_t__,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC7(
	struct xfs_scrub	*sc)
{
	struct xfs_mount	*mp = sc->mp;
	struct xfs_buf		*bp;
	xfs_agnumber_t		agno;
	int			error;

	/* Don't try to repair AG 0's sb; let xfs_repair deal with it. */
	agno = sc->sm->sm_agno;
	if (agno == 0)
		return -EOPNOTSUPP;

	error = FUNC3(mp, sc->tp, agno, &bp);
	if (error)
		return error;

	/* Copy AG 0's superblock to this one. */
	FUNC2(bp, 0, FUNC0(bp->b_length));
	FUNC4(FUNC1(bp), &mp->m_sb);

	/* Write this to disk. */
	FUNC5(sc->tp, bp, XFS_BLFT_SB_BUF);
	FUNC6(sc->tp, bp, 0, FUNC0(bp->b_length) - 1);
	return error;
}