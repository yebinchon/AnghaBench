#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  scalar_t__ xfs_rfsblock_t ;
struct TYPE_22__ {scalar_t__ sb_dblocks; scalar_t__ sb_agblocks; int sb_agcount; } ;
struct TYPE_20__ {int m_maxagi; int /*<<< orphan*/  m_alloc_set_aside; TYPE_5__ m_sb; int /*<<< orphan*/  m_ddev_targp; } ;
typedef  TYPE_1__ xfs_mount_t ;
struct TYPE_21__ {scalar_t__ newblocks; } ;
typedef  TYPE_2__ xfs_growfs_data_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
typedef  int xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct aghdr_init_data {int agno; scalar_t__ agsize; int nfree; int /*<<< orphan*/  buffer_list; } ;
struct TYPE_19__ {int /*<<< orphan*/  tr_growdata; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_17__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ XFS_MIN_AG_BLOCKS ; 
 int /*<<< orphan*/  XFS_TRANS_RESERVE ; 
 int /*<<< orphan*/  XFS_TRANS_SB_AGCOUNT ; 
 int /*<<< orphan*/  XFS_TRANS_SB_DBLOCKS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_FDBLOCKS ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct aghdr_init_data*,scalar_t__) ; 
 int FUNC7 (TYPE_1__*,struct aghdr_init_data*) ; 
 int FUNC8 (struct xfs_perag*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,int,int*) ; 
 struct xfs_perag* FUNC16 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_perag*) ; 
 int FUNC18 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int FUNC21 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC26(
	xfs_mount_t		*mp,		/* mount point for filesystem */
	xfs_growfs_data_t	*in)		/* growfs data input struct */
{
	xfs_buf_t		*bp;
	int			error;
	xfs_agnumber_t		nagcount;
	xfs_agnumber_t		nagimax = 0;
	xfs_rfsblock_t		nb, nb_mod;
	xfs_rfsblock_t		new;
	xfs_agnumber_t		oagcount;
	xfs_trans_t		*tp;
	struct aghdr_init_data	id = {};

	nb = in->newblocks;
	if (nb < mp->m_sb.sb_dblocks)
		return -EINVAL;
	if ((error = FUNC18(&mp->m_sb, nb)))
		return error;
	error = FUNC12(mp->m_ddev_targp,
				FUNC2(mp, nb) - FUNC3(mp, 1),
				FUNC3(mp, 1), 0, &bp, NULL);
	if (error)
		return error;
	FUNC13(bp);

	new = nb;	/* use new as a temporary here */
	nb_mod = FUNC5(new, mp->m_sb.sb_agblocks);
	nagcount = new + (nb_mod != 0);
	if (nb_mod && nb_mod < XFS_MIN_AG_BLOCKS) {
		nagcount--;
		nb = (xfs_rfsblock_t)nagcount * mp->m_sb.sb_agblocks;
		if (nb < mp->m_sb.sb_dblocks)
			return -EINVAL;
	}
	new = nb - mp->m_sb.sb_dblocks;
	oagcount = mp->m_sb.sb_agcount;

	/* allocate the new per-ag structures */
	if (nagcount > oagcount) {
		error = FUNC15(mp, nagcount, &nagimax);
		if (error)
			return error;
	}

	error = FUNC21(mp, &FUNC1(mp)->tr_growdata,
			FUNC4(mp), 0, XFS_TRANS_RESERVE, &tp);
	if (error)
		return error;

	/*
	 * Write new AG headers to disk. Non-transactional, but need to be
	 * written and completed prior to the growfs transaction being logged.
	 * To do this, we use a delayed write buffer list and wait for
	 * submission and IO completion of the list as a whole. This allows the
	 * IO subsystem to merge all the AG headers in a single AG into a single
	 * IO and hide most of the latency of the IO from us.
	 *
	 * This also means that if we get an error whilst building the buffer
	 * list to write, we can cancel the entire list without having written
	 * anything.
	 */
	FUNC0(&id.buffer_list);
	for (id.agno = nagcount - 1;
	     id.agno >= oagcount;
	     id.agno--, new -= id.agsize) {

		if (id.agno == nagcount - 1)
			id.agsize = nb -
				(id.agno * (xfs_rfsblock_t)mp->m_sb.sb_agblocks);
		else
			id.agsize = mp->m_sb.sb_agblocks;

		error = FUNC7(mp, &id);
		if (error) {
			FUNC10(&id.buffer_list);
			goto out_trans_cancel;
		}
	}
	error = FUNC11(&id.buffer_list);
	if (error)
		goto out_trans_cancel;

	FUNC20(tp, id.nfree);

	/* If there are new blocks in the old last AG, extend it. */
	if (new) {
		error = FUNC6(mp, tp, &id, new);
		if (error)
			goto out_trans_cancel;
	}

	/*
	 * Update changed superblock fields transactionally. These are not
	 * seen by the rest of the world until the transaction commit applies
	 * them atomically to the superblock.
	 */
	if (nagcount > oagcount)
		FUNC24(tp, XFS_TRANS_SB_AGCOUNT, nagcount - oagcount);
	if (nb > mp->m_sb.sb_dblocks)
		FUNC24(tp, XFS_TRANS_SB_DBLOCKS,
				 nb - mp->m_sb.sb_dblocks);
	if (id.nfree)
		FUNC24(tp, XFS_TRANS_SB_FDBLOCKS, id.nfree);
	FUNC25(tp);
	error = FUNC23(tp);
	if (error)
		return error;

	/* New allocation groups fully initialized, so update mount struct */
	if (nagimax)
		mp->m_maxagi = nagimax;
	FUNC19(mp);
	mp->m_alloc_set_aside = FUNC9(mp);

	/*
	 * If we expanded the last AG, free the per-AG reservation
	 * so we can reinitialize it with the new size.
	 */
	if (new) {
		struct xfs_perag	*pag;

		pag = FUNC16(mp, id.agno);
		error = FUNC8(pag);
		FUNC17(pag);
		if (error)
			return error;
	}

	/*
	 * Reserve AG metadata blocks. ENOSPC here does not mean there was a
	 * growfs failure, just that there still isn't space for new user data
	 * after the grow has been run.
	 */
	error = FUNC14(mp);
	if (error == -ENOSPC)
		error = 0;
	return error;

out_trans_cancel:
	FUNC22(tp);
	return error;
}