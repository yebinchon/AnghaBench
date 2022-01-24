#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_fileoff_t ;
struct xfs_mount {TYPE_1__* m_super; } ;
struct TYPE_4__ {int if_flags; } ;
struct xfs_inode {TYPE_2__* i_cowfp; TYPE_2__ i_df; struct xfs_mount* i_mount; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_blockcount; int /*<<< orphan*/  br_state; int /*<<< orphan*/  br_startblock; } ;
struct iomap {int /*<<< orphan*/  type; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_3__ {scalar_t__ s_maxbytes; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HOLESTARTBLOCK ; 
 int /*<<< orphan*/  IOMAP_UNWRITTEN ; 
 scalar_t__ NULLFILEOFF ; 
 scalar_t__ FUNC0 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_EXT_NORM ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 struct xfs_inode* FUNC3 (struct inode*) ; 
 int XFS_IFEXTENTS ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (struct xfs_inode*,struct iomap*,struct xfs_bmbt_irec*,int) ; 
 scalar_t__ FUNC6 (struct xfs_inode*,TYPE_2__*,scalar_t__,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 unsigned int FUNC7 (struct xfs_inode*) ; 
 scalar_t__ FUNC8 (struct xfs_inode*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(
	struct inode		*inode,
	loff_t			offset,
	loff_t			length,
	unsigned		flags,
	struct iomap		*iomap)
{
	struct xfs_inode	*ip = FUNC3(inode);
	struct xfs_mount	*mp = ip->i_mount;
	xfs_fileoff_t		offset_fsb = FUNC1(mp, offset);
	xfs_fileoff_t		end_fsb = FUNC0(mp, offset + length);
	xfs_fileoff_t		cow_fsb = NULLFILEOFF, data_fsb = NULLFILEOFF;
	struct xfs_iext_cursor	icur;
	struct xfs_bmbt_irec	imap, cmap;
	int			error = 0;
	unsigned		lockmode;

	if (FUNC2(mp))
		return -EIO;

	lockmode = FUNC7(ip);
	if (!(ip->i_df.if_flags & XFS_IFEXTENTS)) {
		error = FUNC9(NULL, ip, XFS_DATA_FORK);
		if (error)
			goto out_unlock;
	}

	if (FUNC6(ip, &ip->i_df, offset_fsb, &icur, &imap)) {
		/*
		 * If we found a data extent we are done.
		 */
		if (imap.br_startoff <= offset_fsb)
			goto done;
		data_fsb = imap.br_startoff;
	} else {
		/*
		 * Fake a hole until the end of the file.
		 */
		data_fsb = FUNC4(FUNC0(mp, offset + length),
			       FUNC0(mp, mp->m_super->s_maxbytes));
	}

	/*
	 * If a COW fork extent covers the hole, report it - capped to the next
	 * data fork extent:
	 */
	if (FUNC8(ip) &&
	    FUNC6(ip, ip->i_cowfp, offset_fsb, &icur, &cmap))
		cow_fsb = cmap.br_startoff;
	if (cow_fsb != NULLFILEOFF && cow_fsb <= offset_fsb) {
		if (data_fsb < cow_fsb + cmap.br_blockcount)
			end_fsb = FUNC4(end_fsb, data_fsb);
		FUNC11(&cmap, offset_fsb, end_fsb);
		error = FUNC5(ip, iomap, &cmap, true);
		/*
		 * This is a COW extent, so we must probe the page cache
		 * because there could be dirty page cache being backed
		 * by this extent.
		 */
		iomap->type = IOMAP_UNWRITTEN;
		goto out_unlock;
	}

	/*
	 * Else report a hole, capped to the next found data or COW extent.
	 */
	if (cow_fsb != NULLFILEOFF && cow_fsb < data_fsb)
		imap.br_blockcount = cow_fsb - offset_fsb;
	else
		imap.br_blockcount = data_fsb - offset_fsb;
	imap.br_startoff = offset_fsb;
	imap.br_startblock = HOLESTARTBLOCK;
	imap.br_state = XFS_EXT_NORM;
done:
	FUNC11(&imap, offset_fsb, end_fsb);
	error = FUNC5(ip, iomap, &imap, false);
out_unlock:
	FUNC10(ip, lockmode);
	return error;
}