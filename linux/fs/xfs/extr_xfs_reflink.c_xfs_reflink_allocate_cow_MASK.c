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
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_filblks_t ;
typedef  scalar_t__ xfs_extlen_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_cowfp; struct xfs_mount* i_mount; } ;
struct xfs_bmbt_irec {scalar_t__ br_state; int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startoff; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 TYPE_1__* FUNC1 (struct xfs_mount*) ; 
 int XFS_BMAPI_COWFORK ; 
 int XFS_BMAPI_PREALLOC ; 
 scalar_t__ FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_EXT_NORM ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_QMOPT_RES_REGBLKS ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,struct xfs_bmbt_irec*,int*) ; 
 int FUNC6 (struct xfs_inode*,struct xfs_bmbt_irec*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*) ; 
 int FUNC12 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct xfs_inode*,int) ; 
 int FUNC15 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct xfs_mount*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_trans*) ; 
 int FUNC18 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct xfs_trans*,struct xfs_inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct xfs_trans*,struct xfs_inode*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct xfs_bmbt_irec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC23(
	struct xfs_inode	*ip,
	struct xfs_bmbt_irec	*imap,
	bool			*shared,
	uint			*lockmode,
	bool			convert_now)
{
	struct xfs_mount	*mp = ip->i_mount;
	xfs_fileoff_t		offset_fsb = imap->br_startoff;
	xfs_filblks_t		count_fsb = imap->br_blockcount;
	struct xfs_trans	*tp;
	int			nimaps, error = 0;
	bool			found;
	xfs_filblks_t		resaligned;
	xfs_extlen_t		resblks = 0;

	FUNC0(FUNC12(ip, XFS_ILOCK_EXCL));
	if (!ip->i_cowfp) {
		FUNC0(!FUNC11(ip));
		FUNC8(ip);
	}

	error = FUNC6(ip, imap, shared, &found);
	if (error || !*shared)
		return error;
	if (found)
		goto convert;

	resaligned = FUNC4(imap->br_startoff,
		imap->br_blockcount, FUNC7(ip));
	resblks = FUNC2(mp, resaligned);

	FUNC13(ip, *lockmode);
	error = FUNC16(mp, &FUNC1(mp)->tr_write, resblks, 0, 0, &tp);
	*lockmode = XFS_ILOCK_EXCL;
	FUNC9(ip, *lockmode);

	if (error)
		return error;

	error = FUNC14(ip, false);
	if (error)
		goto out_trans_cancel;

	/*
	 * Check for an overlapping extent again now that we dropped the ilock.
	 */
	error = FUNC6(ip, imap, shared, &found);
	if (error || !*shared)
		goto out_trans_cancel;
	if (found) {
		FUNC17(tp);
		goto convert;
	}

	error = FUNC20(tp, ip, resblks, 0,
			XFS_QMOPT_RES_REGBLKS);
	if (error)
		goto out_trans_cancel;

	FUNC19(tp, ip, 0);

	/* Allocate the entire reservation as unwritten blocks. */
	nimaps = 1;
	error = FUNC5(tp, ip, imap->br_startoff, imap->br_blockcount,
			XFS_BMAPI_COWFORK | XFS_BMAPI_PREALLOC,
			resblks, imap, &nimaps);
	if (error)
		goto out_unreserve;

	FUNC10(ip);
	error = FUNC18(tp);
	if (error)
		return error;

	/*
	 * Allocation succeeded but the requested range was not even partially
	 * satisfied?  Bail out!
	 */
	if (nimaps == 0)
		return -ENOSPC;
convert:
	FUNC22(imap, offset_fsb, count_fsb);
	/*
	 * COW fork extents are supposed to remain unwritten until we're ready
	 * to initiate a disk write.  For direct I/O we are going to write the
	 * data and need the conversion, but for buffered writes we're done.
	 */
	if (!convert_now || imap->br_state == XFS_EXT_NORM)
		return 0;
	FUNC3(ip, imap);
	return FUNC15(ip, offset_fsb, count_fsb);

out_unreserve:
	FUNC21(tp, ip, (long)resblks, 0,
			XFS_QMOPT_RES_REGBLKS);
out_trans_cancel:
	FUNC17(tp);
	return error;
}