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
struct xfs_perag {unsigned int pagf_freeblks; unsigned int pagf_flcount; unsigned int pagf_btreeblks; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agi {int /*<<< orphan*/  agi_freecount; int /*<<< orphan*/  agi_count; } ;
struct xfs_agf {int /*<<< orphan*/  agf_length; } ;
struct xfs_ag_geometry {unsigned int ag_freeblks; void* ag_length; void* ag_ifree; void* ag_icount; scalar_t__ ag_number; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  XFS_AG_RESV_NONE ; 
 struct xfs_agf* FUNC0 (struct xfs_buf*) ; 
 struct xfs_agi* FUNC1 (struct xfs_buf*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_ag_geometry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_perag*,struct xfs_ag_geometry*) ; 
 unsigned int FUNC5 (struct xfs_perag*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_mount*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_buf*) ; 
 int FUNC8 (struct xfs_mount*,int /*<<< orphan*/ *,scalar_t__,struct xfs_buf**) ; 
 struct xfs_perag* FUNC9 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_perag*) ; 

int
FUNC11(
	struct xfs_mount	*mp,
	xfs_agnumber_t		agno,
	struct xfs_ag_geometry	*ageo)
{
	struct xfs_buf		*agi_bp;
	struct xfs_buf		*agf_bp;
	struct xfs_agi		*agi;
	struct xfs_agf		*agf;
	struct xfs_perag	*pag;
	unsigned int		freeblks;
	int			error;

	if (agno >= mp->m_sb.sb_agcount)
		return -EINVAL;

	/* Lock the AG headers. */
	error = FUNC8(mp, NULL, agno, &agi_bp);
	if (error)
		return error;
	error = FUNC6(mp, NULL, agno, 0, &agf_bp);
	if (error)
		goto out_agi;
	pag = FUNC9(mp, agno);

	/* Fill out form. */
	FUNC3(ageo, 0, sizeof(*ageo));
	ageo->ag_number = agno;

	agi = FUNC1(agi_bp);
	ageo->ag_icount = FUNC2(agi->agi_count);
	ageo->ag_ifree = FUNC2(agi->agi_freecount);

	agf = FUNC0(agf_bp);
	ageo->ag_length = FUNC2(agf->agf_length);
	freeblks = pag->pagf_freeblks +
		   pag->pagf_flcount +
		   pag->pagf_btreeblks -
		   FUNC5(pag, XFS_AG_RESV_NONE);
	ageo->ag_freeblks = freeblks;
	FUNC4(pag, ageo);

	/* Release resources. */
	FUNC10(pag);
	FUNC7(agf_bp);
out_agi:
	FUNC7(agi_bp);
	return error;
}