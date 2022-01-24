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
typedef  int /*<<< orphan*/  xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct xfs_bmbt_irec {int /*<<< orphan*/  br_state; scalar_t__ br_startoff; int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_EXT_NORM ; 
 int /*<<< orphan*/  XFS_RMAP_FREE ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(
	struct xfs_trans	*tp,
	xfs_agnumber_t		agno,
	xfs_agblock_t		bno,
	xfs_extlen_t		len,
	uint64_t		owner)
{
	struct xfs_bmbt_irec	bmap;

	if (!FUNC2(tp->t_mountp, XFS_DATA_FORK))
		return;

	bmap.br_startblock = FUNC0(tp->t_mountp, agno, bno);
	bmap.br_blockcount = len;
	bmap.br_startoff = 0;
	bmap.br_state = XFS_EXT_NORM;

	FUNC1(tp, XFS_RMAP_FREE, owner, XFS_DATA_FORK, &bmap);
}