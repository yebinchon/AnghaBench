#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/ * t_mountp; } ;
typedef  TYPE_1__ xfs_trans_t ;
struct TYPE_23__ {int /*<<< orphan*/  pagf_btreeblks; int /*<<< orphan*/  pagf_flcount; int /*<<< orphan*/  pagf_agflreset; } ;
typedef  TYPE_2__ xfs_perag_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_24__ {scalar_t__ b_addr; } ;
typedef  TYPE_3__ xfs_buf_t ;
struct TYPE_25__ {scalar_t__ agf_fllast; scalar_t__ agf_flcount; scalar_t__ agf_btreeblks; scalar_t__ agf_seqno; } ;
typedef  TYPE_4__ xfs_agf_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_AGF_BTREEBLKS ; 
 int XFS_AGF_FLCOUNT ; 
 int XFS_AGF_FLLAST ; 
 int /*<<< orphan*/  XFS_BLFT_AGFL_BUF ; 
 TYPE_4__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,size_t,TYPE_3__**) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_3__*,int,int) ; 

int					/* error */
FUNC14(
	xfs_trans_t		*tp,	/* transaction pointer */
	xfs_buf_t		*agbp,	/* buffer for a.g. freelist header */
	xfs_buf_t		*agflbp,/* buffer for a.g. free block array */
	xfs_agblock_t		bno,	/* block being freed */
	int			btreeblk) /* block came from a AGF btree */
{
	xfs_agf_t		*agf;	/* a.g. freespace structure */
	__be32			*blockp;/* pointer to array entry */
	int			error;
	int			logflags;
	xfs_mount_t		*mp;	/* mount structure */
	xfs_perag_t		*pag;	/* per allocation group data */
	__be32			*agfl_bno;
	int			startoff;

	agf = FUNC1(agbp);
	mp = tp->t_mountp;

	if (!agflbp && (error = FUNC8(mp, tp,
			FUNC4(agf->agf_seqno), &agflbp)))
		return error;
	FUNC3(&agf->agf_fllast, 1);
	if (FUNC4(agf->agf_fllast) == FUNC6(mp))
		agf->agf_fllast = 0;

	pag = FUNC9(mp, FUNC4(agf->agf_seqno));
	FUNC0(!pag->pagf_agflreset);
	FUNC3(&agf->agf_flcount, 1);
	FUNC11(tp, 1);
	pag->pagf_flcount++;

	logflags = XFS_AGF_FLLAST | XFS_AGF_FLCOUNT;
	if (btreeblk) {
		FUNC3(&agf->agf_btreeblks, -1);
		pag->pagf_btreeblks--;
		logflags |= XFS_AGF_BTREEBLKS;
	}
	FUNC10(pag);

	FUNC7(tp, agbp, logflags);

	FUNC0(FUNC4(agf->agf_flcount) <= FUNC6(mp));

	agfl_bno = FUNC2(mp, agflbp);
	blockp = &agfl_bno[FUNC4(agf->agf_fllast)];
	*blockp = FUNC5(bno);
	startoff = (char *)blockp - (char *)agflbp->b_addr;

	FUNC7(tp, agbp, logflags);

	FUNC12(tp, agflbp, XFS_BLFT_AGFL_BUF);
	FUNC13(tp, agflbp, startoff,
			  startoff + sizeof(xfs_agblock_t) - 1);
	return 0;
}