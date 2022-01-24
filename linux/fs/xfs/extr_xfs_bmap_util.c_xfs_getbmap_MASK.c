#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_filblks_t ;
struct xfs_mount {TYPE_2__* m_super; } ;
struct TYPE_4__ {long long di_size; int di_flags; } ;
struct xfs_inode {TYPE_1__ i_d; int /*<<< orphan*/  i_delayed_blks; struct xfs_mount* i_mount; } ;
struct xfs_ifork {int if_flags; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;
struct kgetbmap {int /*<<< orphan*/  bmv_oflags; } ;
struct getbmapx {int bmv_iflags; int bmv_length; int bmv_entries; long long bmv_offset; } ;
typedef  long long int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_5__ {long long s_maxbytes; } ;

/* Variables and functions */
 int BMV_IF_ATTRFORK ; 
 int BMV_IF_COWFORK ; 
 int BMV_IF_DELALLOC ; 
 int BMV_IF_VALID ; 
 int /*<<< orphan*/  BMV_OF_LAST ; 
 int EINVAL ; 
 TYPE_3__* FUNC0 (struct xfs_inode*) ; 
#define  XFS_ATTR_FORK 133 
 scalar_t__ FUNC1 (struct xfs_mount*,long long) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,long long) ; 
 scalar_t__ FUNC3 (struct xfs_mount*,long long) ; 
#define  XFS_COW_FORK 132 
#define  XFS_DATA_FORK 131 
 int XFS_DIFLAG_APPEND ; 
 int XFS_DIFLAG_PREALLOC ; 
#define  XFS_DINODE_FMT_BTREE 130 
#define  XFS_DINODE_FMT_EXTENTS 129 
#define  XFS_DINODE_FMT_LOCAL 128 
 long long FUNC4 (struct xfs_mount*,scalar_t__) ; 
 int XFS_IFEXTENTS ; 
 int FUNC5 (struct xfs_inode*,int) ; 
 struct xfs_ifork* FUNC6 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*) ; 
 int XFS_ILOCK_SHARED ; 
 int XFS_IOLOCK_SHARED ; 
 long long FUNC8 (struct xfs_inode*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (long long,long long) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_inode*) ; 
 scalar_t__ FUNC13 (struct getbmapx*) ; 
 scalar_t__ FUNC14 (struct xfs_bmbt_irec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_inode*,struct getbmapx*,struct kgetbmap*,long long,scalar_t__,scalar_t__) ; 
 int FUNC16 (struct xfs_inode*,struct getbmapx*,struct kgetbmap*,long long,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_inode*,struct xfs_ifork*,scalar_t__,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC18 (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_inode*,int) ; 
 int FUNC20 (struct xfs_inode*) ; 
 int FUNC21 (struct xfs_inode*) ; 
 int FUNC22 (int /*<<< orphan*/ *,struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ; 

int						/* error code */
FUNC25(
	struct xfs_inode	*ip,
	struct getbmapx		*bmv,		/* user bmap structure */
	struct kgetbmap		*out)
{
	struct xfs_mount	*mp = ip->i_mount;
	int			iflags = bmv->bmv_iflags;
	int			whichfork, lock, error = 0;
	int64_t			bmv_end, max_len;
	xfs_fileoff_t		bno, first_bno;
	struct xfs_ifork	*ifp;
	struct xfs_bmbt_irec	got, rec;
	xfs_filblks_t		len;
	struct xfs_iext_cursor	icur;

	if (bmv->bmv_iflags & ~BMV_IF_VALID)
		return -EINVAL;
#ifndef DEBUG
	/* Only allow CoW fork queries if we're debugging. */
	if (iflags & BMV_IF_COWFORK)
		return -EINVAL;
#endif
	if ((iflags & BMV_IF_ATTRFORK) && (iflags & BMV_IF_COWFORK))
		return -EINVAL;

	if (bmv->bmv_length < -1)
		return -EINVAL;
	bmv->bmv_entries = 0;
	if (bmv->bmv_length == 0)
		return 0;

	if (iflags & BMV_IF_ATTRFORK)
		whichfork = XFS_ATTR_FORK;
	else if (iflags & BMV_IF_COWFORK)
		whichfork = XFS_COW_FORK;
	else
		whichfork = XFS_DATA_FORK;
	ifp = FUNC6(ip, whichfork);

	FUNC19(ip, XFS_IOLOCK_SHARED);
	switch (whichfork) {
	case XFS_ATTR_FORK:
		if (!FUNC7(ip))
			goto out_unlock_iolock;

		max_len = 1LL << 32;
		lock = FUNC20(ip);
		break;
	case XFS_COW_FORK:
		/* No CoW fork? Just return */
		if (!ifp)
			goto out_unlock_iolock;

		if (FUNC11(ip))
			max_len = mp->m_super->s_maxbytes;
		else
			max_len = FUNC8(ip);

		lock = XFS_ILOCK_SHARED;
		FUNC19(ip, lock);
		break;
	case XFS_DATA_FORK:
		if (!(iflags & BMV_IF_DELALLOC) &&
		    (ip->i_delayed_blks || FUNC8(ip) > ip->i_d.di_size)) {
			error = FUNC9(FUNC0(ip)->i_mapping);
			if (error)
				goto out_unlock_iolock;

			/*
			 * Even after flushing the inode, there can still be
			 * delalloc blocks on the inode beyond EOF due to
			 * speculative preallocation.  These are not removed
			 * until the release function is called or the inode
			 * is inactivated.  Hence we cannot assert here that
			 * ip->i_delayed_blks == 0.
			 */
		}

		if (FUNC12(ip) ||
		    (ip->i_d.di_flags &
		     (XFS_DIFLAG_PREALLOC | XFS_DIFLAG_APPEND)))
			max_len = mp->m_super->s_maxbytes;
		else
			max_len = FUNC8(ip);

		lock = FUNC21(ip);
		break;
	}

	switch (FUNC5(ip, whichfork)) {
	case XFS_DINODE_FMT_EXTENTS:
	case XFS_DINODE_FMT_BTREE:
		break;
	case XFS_DINODE_FMT_LOCAL:
		/* Local format inode forks report no extents. */
		goto out_unlock_ilock;
	default:
		error = -EINVAL;
		goto out_unlock_ilock;
	}

	if (bmv->bmv_length == -1) {
		max_len = FUNC4(mp, FUNC3(mp, max_len));
		bmv->bmv_length = FUNC10(0LL, max_len - bmv->bmv_offset);
	}

	bmv_end = bmv->bmv_offset + bmv->bmv_length;

	first_bno = bno = FUNC2(mp, bmv->bmv_offset);
	len = FUNC1(mp, bmv->bmv_length);

	if (!(ifp->if_flags & XFS_IFEXTENTS)) {
		error = FUNC22(NULL, ip, whichfork);
		if (error)
			goto out_unlock_ilock;
	}

	if (!FUNC17(ip, ifp, bno, &icur, &got)) {
		/*
		 * Report a whole-file hole if the delalloc flag is set to
		 * stay compatible with the old implementation.
		 */
		if (iflags & BMV_IF_DELALLOC)
			FUNC15(ip, bmv, out, bmv_end, bno,
					FUNC3(mp, FUNC8(ip)));
		goto out_unlock_ilock;
	}

	while (!FUNC13(bmv)) {
		FUNC24(&got, first_bno, len);

		/*
		 * Report an entry for a hole if this extent doesn't directly
		 * follow the previous one.
		 */
		if (got.br_startoff > bno) {
			FUNC15(ip, bmv, out, bmv_end, bno,
					got.br_startoff);
			if (FUNC13(bmv))
				break;
		}

		/*
		 * In order to report shared extents accurately, we report each
		 * distinct shared / unshared part of a single bmbt record with
		 * an individual getbmapx record.
		 */
		bno = got.br_startoff + got.br_blockcount;
		rec = got;
		do {
			error = FUNC16(ip, bmv, out, bmv_end,
					&rec);
			if (error || FUNC13(bmv))
				goto out_unlock_ilock;
		} while (FUNC14(&rec, bno));

		if (!FUNC18(ifp, &icur, &got)) {
			xfs_fileoff_t	end = FUNC3(mp, FUNC8(ip));

			out[bmv->bmv_entries - 1].bmv_oflags |= BMV_OF_LAST;

			if (whichfork != XFS_ATTR_FORK && bno < end &&
			    !FUNC13(bmv)) {
				FUNC15(ip, bmv, out, bmv_end,
						bno, end);
			}
			break;
		}

		if (bno >= first_bno + len)
			break;
	}

out_unlock_ilock:
	FUNC23(ip, lock);
out_unlock_iolock:
	FUNC23(ip, XFS_IOLOCK_SHARED);
	return error;
}