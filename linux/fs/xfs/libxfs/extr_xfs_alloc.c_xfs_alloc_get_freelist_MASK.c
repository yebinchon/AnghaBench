#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * t_mountp; } ;
typedef  TYPE_1__ xfs_trans_t ;
struct TYPE_13__ {int /*<<< orphan*/  pagf_btreeblks; int /*<<< orphan*/  pagf_flcount; int /*<<< orphan*/  pagf_agflreset; } ;
typedef  TYPE_2__ xfs_perag_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
struct TYPE_14__ {scalar_t__ agf_btreeblks; scalar_t__ agf_flcount; scalar_t__ agf_seqno; scalar_t__ agf_flfirst; } ;
typedef  TYPE_3__ xfs_agf_t ;
typedef  size_t xfs_agblock_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t NULLAGBLOCK ; 
 int XFS_AGF_BTREEBLKS ; 
 int XFS_AGF_FLCOUNT ; 
 int XFS_AGF_FLFIRST ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 size_t FUNC4 (scalar_t__) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,size_t,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int				/* error */
FUNC12(
	xfs_trans_t	*tp,	/* transaction pointer */
	xfs_buf_t	*agbp,	/* buffer containing the agf structure */
	xfs_agblock_t	*bnop,	/* block address retrieved from freelist */
	int		btreeblk) /* destination is a AGF btree */
{
	xfs_agf_t	*agf;	/* a.g. freespace structure */
	xfs_buf_t	*agflbp;/* buffer for a.g. freelist structure */
	xfs_agblock_t	bno;	/* block number returned */
	__be32		*agfl_bno;
	int		error;
	int		logflags;
	xfs_mount_t	*mp = tp->t_mountp;
	xfs_perag_t	*pag;	/* per allocation group data */

	/*
	 * Freelist is empty, give up.
	 */
	agf = FUNC1(agbp);
	if (!agf->agf_flcount) {
		*bnop = NULLAGBLOCK;
		return 0;
	}
	/*
	 * Read the array of free blocks.
	 */
	error = FUNC7(mp, tp, FUNC4(agf->agf_seqno),
				    &agflbp);
	if (error)
		return error;


	/*
	 * Get the block number and update the data structures.
	 */
	agfl_bno = FUNC2(mp, agflbp);
	bno = FUNC4(agfl_bno[FUNC4(agf->agf_flfirst)]);
	FUNC3(&agf->agf_flfirst, 1);
	FUNC11(tp, agflbp);
	if (FUNC4(agf->agf_flfirst) == FUNC5(mp))
		agf->agf_flfirst = 0;

	pag = FUNC8(mp, FUNC4(agf->agf_seqno));
	FUNC0(!pag->pagf_agflreset);
	FUNC3(&agf->agf_flcount, -1);
	FUNC10(tp, -1);
	pag->pagf_flcount--;

	logflags = XFS_AGF_FLFIRST | XFS_AGF_FLCOUNT;
	if (btreeblk) {
		FUNC3(&agf->agf_btreeblks, 1);
		pag->pagf_btreeblks++;
		logflags |= XFS_AGF_BTREEBLKS;
	}
	FUNC9(pag);

	FUNC6(tp, agbp, logflags);
	*bnop = bno;

	return 0;
}