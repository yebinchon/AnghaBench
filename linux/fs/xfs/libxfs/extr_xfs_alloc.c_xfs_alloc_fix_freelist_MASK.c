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
typedef  scalar_t__ xfs_extlen_t ;
typedef  scalar_t__ xfs_agblock_t ;
typedef  int /*<<< orphan*/  targs ;
struct xfs_trans {int t_flags; } ;
struct xfs_perag {scalar_t__ pagf_flcount; scalar_t__ pagf_agflreset; scalar_t__ pagf_metadata; int /*<<< orphan*/  pagf_init; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_alloc_arg {int alignment; int minlen; int prod; scalar_t__ agbno; scalar_t__ len; struct xfs_buf* agbp; int /*<<< orphan*/  resv; scalar_t__ maxlen; int /*<<< orphan*/  agno; struct xfs_perag* pag; int /*<<< orphan*/  type; struct xfs_mount* mp; struct xfs_trans* tp; int /*<<< orphan*/  oinfo; int /*<<< orphan*/  datatype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NULLAGBLOCK ; 
 int /*<<< orphan*/  XFS_AG_RESV_AGFL ; 
 int /*<<< orphan*/  XFS_ALLOCTYPE_THIS_AG ; 
 int XFS_ALLOC_FLAG_CHECK ; 
 int XFS_ALLOC_FLAG_FREEING ; 
 int XFS_ALLOC_FLAG_NORMAP ; 
 int XFS_ALLOC_FLAG_NOSHRINK ; 
 int XFS_ALLOC_FLAG_TRYLOCK ; 
 int /*<<< orphan*/  XFS_RMAP_OINFO_AG ; 
 int /*<<< orphan*/  XFS_RMAP_OINFO_SKIP_UPDATE ; 
 int XFS_TRANS_PERM_LOG_RES ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_alloc_arg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_trans*,struct xfs_buf*,struct xfs_perag*) ; 
 int FUNC3 (struct xfs_alloc_arg*) ; 
 int FUNC4 (struct xfs_trans*,struct xfs_buf*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct xfs_mount*,struct xfs_perag*) ; 
 int FUNC7 (struct xfs_trans*,struct xfs_buf*,struct xfs_buf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,int,struct xfs_buf**) ; 
 int FUNC9 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_alloc_arg*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_trans*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_trans*,struct xfs_buf*) ; 

int			/* error */
FUNC13(
	struct xfs_alloc_arg	*args,	/* allocation argument structure */
	int			flags)	/* XFS_ALLOC_FLAG_... */
{
	struct xfs_mount	*mp = args->mp;
	struct xfs_perag	*pag = args->pag;
	struct xfs_trans	*tp = args->tp;
	struct xfs_buf		*agbp = NULL;
	struct xfs_buf		*agflbp = NULL;
	struct xfs_alloc_arg	targs;	/* local allocation arguments */
	xfs_agblock_t		bno;	/* freelist block */
	xfs_extlen_t		need;	/* total blocks needed in freelist */
	int			error = 0;

	/* deferred ops (AGFL block frees) require permanent transactions */
	FUNC0(tp->t_flags & XFS_TRANS_PERM_LOG_RES);

	if (!pag->pagf_init) {
		error = FUNC8(mp, tp, args->agno, flags, &agbp);
		if (error)
			goto out_no_agbp;
		if (!pag->pagf_init) {
			FUNC0(flags & XFS_ALLOC_FLAG_TRYLOCK);
			FUNC0(!(flags & XFS_ALLOC_FLAG_FREEING));
			goto out_agbp_relse;
		}
	}

	/*
	 * If this is a metadata preferred pag and we are user data then try
	 * somewhere else if we are not being asked to try harder at this
	 * point
	 */
	if (pag->pagf_metadata && FUNC5(args->datatype) &&
	    (flags & XFS_ALLOC_FLAG_TRYLOCK)) {
		FUNC0(!(flags & XFS_ALLOC_FLAG_FREEING));
		goto out_agbp_relse;
	}

	need = FUNC6(mp, pag);
	if (!FUNC10(args, need, flags |
			XFS_ALLOC_FLAG_CHECK))
		goto out_agbp_relse;

	/*
	 * Get the a.g. freespace buffer.
	 * Can fail if we're not blocking on locks, and it's held.
	 */
	if (!agbp) {
		error = FUNC8(mp, tp, args->agno, flags, &agbp);
		if (error)
			goto out_no_agbp;
		if (!agbp) {
			FUNC0(flags & XFS_ALLOC_FLAG_TRYLOCK);
			FUNC0(!(flags & XFS_ALLOC_FLAG_FREEING));
			goto out_no_agbp;
		}
	}

	/* reset a padding mismatched agfl before final free space check */
	if (pag->pagf_agflreset)
		FUNC2(tp, agbp, pag);

	/* If there isn't enough total space or single-extent, reject it. */
	need = FUNC6(mp, pag);
	if (!FUNC10(args, need, flags))
		goto out_agbp_relse;

	/*
	 * Make the freelist shorter if it's too long.
	 *
	 * Note that from this point onwards, we will always release the agf and
	 * agfl buffers on error. This handles the case where we error out and
	 * the buffers are clean or may not have been joined to the transaction
	 * and hence need to be released manually. If they have been joined to
	 * the transaction, then xfs_trans_brelse() will handle them
	 * appropriately based on the recursion count and dirty state of the
	 * buffer.
	 *
	 * XXX (dgc): When we have lots of free space, does this buy us
	 * anything other than extra overhead when we need to put more blocks
	 * back on the free list? Maybe we should only do this when space is
	 * getting low or the AGFL is more than half full?
	 *
	 * The NOSHRINK flag prevents the AGFL from being shrunk if it's too
	 * big; the NORMAP flag prevents AGFL expand/shrink operations from
	 * updating the rmapbt.  Both flags are used in xfs_repair while we're
	 * rebuilding the rmapbt, and neither are used by the kernel.  They're
	 * both required to ensure that rmaps are correctly recorded for the
	 * regenerated AGFL, bnobt, and cntbt.  See repair/phase5.c and
	 * repair/rmap.c in xfsprogs for details.
	 */
	FUNC1(&targs, 0, sizeof(targs));
	/* struct copy below */
	if (flags & XFS_ALLOC_FLAG_NORMAP)
		targs.oinfo = XFS_RMAP_OINFO_SKIP_UPDATE;
	else
		targs.oinfo = XFS_RMAP_OINFO_AG;
	while (!(flags & XFS_ALLOC_FLAG_NOSHRINK) && pag->pagf_flcount > need) {
		error = FUNC4(tp, agbp, &bno, 0);
		if (error)
			goto out_agbp_relse;

		/* defer agfl frees */
		FUNC11(tp, args->agno, bno, &targs.oinfo);
	}

	targs.tp = tp;
	targs.mp = mp;
	targs.agbp = agbp;
	targs.agno = args->agno;
	targs.alignment = targs.minlen = targs.prod = 1;
	targs.type = XFS_ALLOCTYPE_THIS_AG;
	targs.pag = pag;
	error = FUNC9(mp, tp, targs.agno, &agflbp);
	if (error)
		goto out_agbp_relse;

	/* Make the freelist longer if it's too short. */
	while (pag->pagf_flcount < need) {
		targs.agbno = 0;
		targs.maxlen = need - pag->pagf_flcount;
		targs.resv = XFS_AG_RESV_AGFL;

		/* Allocate as many blocks as possible at once. */
		error = FUNC3(&targs);
		if (error)
			goto out_agflbp_relse;

		/*
		 * Stop if we run out.  Won't happen if callers are obeying
		 * the restrictions correctly.  Can happen for free calls
		 * on a completely full ag.
		 */
		if (targs.agbno == NULLAGBLOCK) {
			if (flags & XFS_ALLOC_FLAG_FREEING)
				break;
			goto out_agflbp_relse;
		}
		/*
		 * Put each allocated block on the list.
		 */
		for (bno = targs.agbno; bno < targs.agbno + targs.len; bno++) {
			error = FUNC7(tp, agbp,
							agflbp, bno, 0);
			if (error)
				goto out_agflbp_relse;
		}
	}
	FUNC12(tp, agflbp);
	args->agbp = agbp;
	return 0;

out_agflbp_relse:
	FUNC12(tp, agflbp);
out_agbp_relse:
	if (agbp)
		FUNC12(tp, agbp);
out_no_agbp:
	args->agbp = NULL;
	return error;
}