#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_30__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_24__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_ufsize_t ;
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  scalar_t__ xfs_off_t ;
struct TYPE_32__ {int sb_rextsize; } ;
struct TYPE_34__ {TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_36__ {TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_filblks_t ;
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct TYPE_37__ {scalar_t__ br_startblock; scalar_t__ br_startoff; scalar_t__ br_state; scalar_t__ br_blockcount; } ;
typedef  TYPE_4__ xfs_bmbt_irec_t ;
typedef  int uint ;
struct TYPE_35__ {int /*<<< orphan*/  tr_write; } ;
struct TYPE_33__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 scalar_t__ HOLESTARTBLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_30__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int XFS_BMAPI_CONVERT ; 
 int XFS_BMAPI_PREALLOC ; 
 int XFS_BMAPI_ZERO ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int FUNC6 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ XFS_EXT_UNWRITTEN ; 
 int XFS_IFEXTENTS ; 
 TYPE_24__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int XFS_QMOPT_RES_REGBLKS ; 
 int XFS_QMOPT_RES_RTBLKS ; 
 int XFS_TRANS_RESERVE ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,scalar_t__,int,int,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int) ; 
 int FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC18 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int) ; 
 int FUNC20 (TYPE_3__*) ; 
 int FUNC21 (TYPE_2__*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,TYPE_3__*,long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,scalar_t__) ; 

int
FUNC28(
	xfs_inode_t	*ip,
	xfs_off_t	offset,
	size_t		count,
	xfs_bmbt_irec_t *imap,
	int		nmaps)
{
	xfs_mount_t	*mp = ip->i_mount;
	xfs_fileoff_t	offset_fsb;
	xfs_fileoff_t	last_fsb;
	xfs_filblks_t	count_fsb, resaligned;
	xfs_extlen_t	extsz;
	int		nimaps;
	int		quota_flag;
	int		rt;
	xfs_trans_t	*tp;
	uint		qblocks, resblks, resrtextents;
	int		error;
	int		lockmode;
	int		bmapi_flags = XFS_BMAPI_PREALLOC;
	uint		tflags = 0;

	rt = FUNC9(ip);
	extsz = FUNC15(ip);
	lockmode = XFS_ILOCK_SHARED;	/* locked by caller */

	FUNC0(FUNC18(ip, lockmode));

	offset_fsb = FUNC5(mp, offset);
	last_fsb = FUNC4(mp, ((xfs_ufsize_t)(offset + count)));
	if ((offset + count) > FUNC8(ip)) {
		/*
		 * Assert that the in-core extent list is present since this can
		 * call xfs_iread_extents() and we only have the ilock shared.
		 * This should be safe because the lock was held around a bmapi
		 * call in the caller and we only need it to access the in-core
		 * list.
		 */
		FUNC0(FUNC7(ip, XFS_DATA_FORK)->if_flags &
								XFS_IFEXTENTS);
		error = FUNC17(ip, extsz, &last_fsb);
		if (error)
			goto out_unlock;
	} else {
		if (nmaps && (imap->br_startblock == HOLESTARTBLOCK))
			last_fsb = FUNC10(last_fsb, (xfs_fileoff_t)
					imap->br_blockcount +
					imap->br_startoff);
	}
	count_fsb = last_fsb - offset_fsb;
	FUNC0(count_fsb > 0);
	resaligned = FUNC13(offset_fsb, count_fsb, extsz);

	if (FUNC11(rt)) {
		resrtextents = qblocks = resaligned;
		resrtextents /= mp->m_sb.sb_rextsize;
		resblks = FUNC6(mp, 0);
		quota_flag = XFS_QMOPT_RES_RTBLKS;
	} else {
		resrtextents = 0;
		resblks = qblocks = FUNC6(mp, resaligned);
		quota_flag = XFS_QMOPT_RES_REGBLKS;
	}

	/*
	 * Drop the shared lock acquired by the caller, attach the dquot if
	 * necessary and move on to transaction setup.
	 */
	FUNC19(ip, lockmode);
	error = FUNC20(ip);
	if (error)
		return error;

	/*
	 * For DAX, we do not allocate unwritten extents, but instead we zero
	 * the block before we commit the transaction.  Ideally we'd like to do
	 * this outside the transaction context, but if we commit and then crash
	 * we may not have zeroed the blocks and this will be exposed on
	 * recovery of the allocation. Hence we must zero before commit.
	 *
	 * Further, if we are mapping unwritten extents here, we need to zero
	 * and convert them to written so that we don't need an unwritten extent
	 * callback for DAX. This also means that we need to be able to dip into
	 * the reserve block pool for bmbt block allocation if there is no space
	 * left but we need to do unwritten extent conversion.
	 */
	if (FUNC1(FUNC3(ip))) {
		bmapi_flags = XFS_BMAPI_CONVERT | XFS_BMAPI_ZERO;
		if (imap->br_state == XFS_EXT_UNWRITTEN) {
			tflags |= XFS_TRANS_RESERVE;
			resblks = FUNC6(mp, 0) << 1;
		}
	}
	error = FUNC21(mp, &FUNC2(mp)->tr_write, resblks, resrtextents,
			tflags, &tp);
	if (error)
		return error;

	lockmode = XFS_ILOCK_EXCL;
	FUNC16(ip, lockmode);

	error = FUNC25(tp, ip, qblocks, 0, quota_flag);
	if (error)
		goto out_trans_cancel;

	FUNC24(tp, ip, 0);

	/*
	 * From this point onwards we overwrite the imap pointer that the
	 * caller gave to us.
	 */
	nimaps = 1;
	error = FUNC14(tp, ip, offset_fsb, count_fsb,
				bmapi_flags, resblks, imap, &nimaps);
	if (error)
		goto out_res_cancel;

	/*
	 * Complete the transaction
	 */
	error = FUNC23(tp);
	if (error)
		goto out_unlock;

	/*
	 * Copy any maps to caller's array and return any error.
	 */
	if (nimaps == 0) {
		error = -ENOSPC;
		goto out_unlock;
	}

	if (FUNC11(!FUNC27(ip, imap->br_startblock)))
		error = FUNC12(ip, imap);

out_unlock:
	FUNC19(ip, lockmode);
	return error;

out_res_cancel:
	FUNC26(tp, ip, (long)qblocks, 0, quota_flag);
out_trans_cancel:
	FUNC22(tp);
	goto out_unlock;
}