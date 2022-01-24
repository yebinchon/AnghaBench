#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_filblks_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
struct TYPE_9__ {char* b_addr; int /*<<< orphan*/ * b_ops; } ;
typedef  TYPE_2__ xfs_buf_t ;
typedef  int umode_t ;
typedef  scalar_t__ uint ;
struct xfs_trans {int dummy; } ;
struct xfs_name {int /*<<< orphan*/  len; } ;
struct xfs_mount {int m_flags; int /*<<< orphan*/  m_ddev_targp; } ;
struct TYPE_8__ {int di_flags; int di_size; int /*<<< orphan*/  di_format; int /*<<< orphan*/  di_version; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct xfs_dquot {int dummy; } ;
struct xfs_bmbt_irec {int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startblock; } ;
typedef  int /*<<< orphan*/  prid_t ;
struct TYPE_10__ {int /*<<< orphan*/  tr_symlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int EPERM ; 
 TYPE_7__* FUNC2 (struct xfs_mount*) ; 
 int S_IFLNK ; 
 int S_IFMT ; 
 int /*<<< orphan*/  XFS_BLFT_SYMLINK_BUF ; 
 int /*<<< orphan*/  XFS_BMAPI_METADATA ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DIFLAG_NOSYMLINKS ; 
 int /*<<< orphan*/  XFS_DINODE_FMT_LOCAL ; 
 scalar_t__ FUNC3 (struct xfs_mount*) ; 
 int FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct xfs_mount*) ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int FUNC7 (struct xfs_inode*) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_PARENT ; 
 int XFS_ILOG_CORE ; 
 int XFS_ILOG_DDATA ; 
 int FUNC8 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int XFS_MOUNT_DIRSYNC ; 
 int XFS_MOUNT_WSYNC ; 
 int XFS_QMOPT_INHERIT ; 
 int XFS_QMOPT_QUOTALL ; 
 int FUNC9 (struct xfs_mount*,int) ; 
 int XFS_SYMLINK_MAPS ; 
 int XFS_SYMLINK_MAXLEN ; 
 scalar_t__ FUNC10 (struct xfs_mount*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 int FUNC14 (int,int) ; 
 int FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_inode*,struct xfs_name*) ; 
 int FUNC17 (struct xfs_trans*,struct xfs_inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,struct xfs_bmbt_irec*,int*) ; 
 int FUNC18 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC19 (struct xfs_trans**,struct xfs_inode*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_inode**) ; 
 int /*<<< orphan*/  FUNC20 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct xfs_inode*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC29 (struct xfs_trans*,struct xfs_inode*,struct xfs_dquot*,struct xfs_dquot*,struct xfs_dquot*) ; 
 int FUNC30 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_dquot**,struct xfs_dquot**,struct xfs_dquot**) ; 
 scalar_t__ FUNC31 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  xfs_symlink_buf_ops ; 
 int /*<<< orphan*/  FUNC32 (struct xfs_mount*,int /*<<< orphan*/ ,int,int,TYPE_2__*) ; 
 int FUNC33 (struct xfs_mount*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC34 (struct xfs_trans*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct xfs_trans*) ; 
 int FUNC36 (struct xfs_trans*) ; 
 TYPE_2__* FUNC37 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct xfs_trans*,struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC39 (struct xfs_trans*,struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC40 (struct xfs_trans*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC41 (struct xfs_trans*,struct xfs_inode*,int) ; 
 int FUNC42 (struct xfs_trans*,struct xfs_mount*,struct xfs_dquot*,struct xfs_dquot*,struct xfs_dquot*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct xfs_trans*) ; 

int
FUNC44(
	struct xfs_inode	*dp,
	struct xfs_name		*link_name,
	const char		*target_path,
	umode_t			mode,
	struct xfs_inode	**ipp)
{
	struct xfs_mount	*mp = dp->i_mount;
	struct xfs_trans	*tp = NULL;
	struct xfs_inode	*ip = NULL;
	int			error = 0;
	int			pathlen;
	bool                    unlock_dp_on_error = false;
	xfs_fileoff_t		first_fsb;
	xfs_filblks_t		fs_blocks;
	int			nmaps;
	struct xfs_bmbt_irec	mval[XFS_SYMLINK_MAPS];
	xfs_daddr_t		d;
	const char		*cur_chunk;
	int			byte_cnt;
	int			n;
	xfs_buf_t		*bp;
	prid_t			prid;
	struct xfs_dquot	*udqp = NULL;
	struct xfs_dquot	*gdqp = NULL;
	struct xfs_dquot	*pdqp = NULL;
	uint			resblks;

	*ipp = NULL;

	FUNC16(dp, link_name);

	if (FUNC3(mp))
		return -EIO;

	/*
	 * Check component lengths of the target path name.
	 */
	pathlen = FUNC15(target_path);
	if (pathlen >= XFS_SYMLINK_MAXLEN)      /* total string too long */
		return -ENAMETOOLONG;
	FUNC0(pathlen > 0);

	udqp = gdqp = NULL;
	prid = FUNC21(dp);

	/*
	 * Make sure that we have allocated dquot(s) on disk.
	 */
	error = FUNC30(dp,
			FUNC27(FUNC12()),
			FUNC26(FUNC11()), prid,
			XFS_QMOPT_QUOTALL | XFS_QMOPT_INHERIT,
			&udqp, &gdqp, &pdqp);
	if (error)
		return error;

	/*
	 * The symlink will fit into the inode data fork?
	 * There can't be any attributes so we get the whole variable part.
	 */
	if (pathlen <= FUNC8(mp, dp->i_d.di_version))
		fs_blocks = 0;
	else
		fs_blocks = FUNC31(mp, pathlen);
	resblks = FUNC10(mp, link_name->len, fs_blocks);

	error = FUNC33(mp, &FUNC2(mp)->tr_symlink, resblks, 0, 0, &tp);
	if (error)
		goto out_release_inode;

	FUNC22(dp, XFS_ILOCK_EXCL | XFS_ILOCK_PARENT);
	unlock_dp_on_error = true;

	/*
	 * Check whether the directory allows new symlinks or not.
	 */
	if (dp->i_d.di_flags & XFS_DIFLAG_NOSYMLINKS) {
		error = -EPERM;
		goto out_trans_cancel;
	}

	/*
	 * Reserve disk quota : blocks and inode.
	 */
	error = FUNC42(tp, mp, udqp, gdqp,
						pdqp, resblks, 1, 0);
	if (error)
		goto out_trans_cancel;

	/*
	 * Allocate an inode for the symlink.
	 */
	error = FUNC19(&tp, dp, S_IFLNK | (mode & ~S_IFMT), 1, 0,
			       prid, &ip);
	if (error)
		goto out_trans_cancel;

	/*
	 * Now we join the directory inode to the transaction.  We do not do it
	 * earlier because xfs_dir_ialloc might commit the previous transaction
	 * (and release all the locks).  An error from here on will result in
	 * the transaction cancel unlocking dp so don't do it explicitly in the
	 * error path.
	 */
	FUNC39(tp, dp, XFS_ILOCK_EXCL);
	unlock_dp_on_error = false;

	/*
	 * Also attach the dquot(s) to it, if applicable.
	 */
	FUNC29(tp, ip, udqp, gdqp, pdqp);

	if (resblks)
		resblks -= FUNC6(mp);
	/*
	 * If the symlink will fit into the inode, write it inline.
	 */
	if (pathlen <= FUNC7(ip)) {
		FUNC23(ip, XFS_DATA_FORK, target_path, pathlen);

		ip->i_d.di_size = pathlen;
		ip->i_d.di_format = XFS_DINODE_FMT_LOCAL;
		FUNC41(tp, ip, XFS_ILOG_DDATA | XFS_ILOG_CORE);
	} else {
		int	offset;

		first_fsb = 0;
		nmaps = XFS_SYMLINK_MAPS;

		error = FUNC17(tp, ip, first_fsb, fs_blocks,
				  XFS_BMAPI_METADATA, resblks, mval, &nmaps);
		if (error)
			goto out_trans_cancel;

		if (resblks)
			resblks -= fs_blocks;
		ip->i_d.di_size = pathlen;
		FUNC41(tp, ip, XFS_ILOG_CORE);

		cur_chunk = target_path;
		offset = 0;
		for (n = 0; n < nmaps; n++) {
			char	*buf;

			d = FUNC5(mp, mval[n].br_startblock);
			byte_cnt = FUNC4(mp, mval[n].br_blockcount);
			bp = FUNC37(tp, mp->m_ddev_targp, d,
					       FUNC1(byte_cnt), 0);
			if (!bp) {
				error = -ENOMEM;
				goto out_trans_cancel;
			}
			bp->b_ops = &xfs_symlink_buf_ops;

			byte_cnt = FUNC9(mp, byte_cnt);
			byte_cnt = FUNC14(byte_cnt, pathlen);

			buf = bp->b_addr;
			buf += FUNC32(mp, ip->i_ino, offset,
						   byte_cnt, bp);

			FUNC13(buf, cur_chunk, byte_cnt);

			cur_chunk += byte_cnt;
			pathlen -= byte_cnt;
			offset += byte_cnt;

			FUNC34(tp, bp, XFS_BLFT_SYMLINK_BUF);
			FUNC40(tp, bp, 0, (buf + byte_cnt - 1) -
							(char *)bp->b_addr);
		}
		FUNC0(pathlen == 0);
	}

	/*
	 * Create the directory entry for the symlink.
	 */
	error = FUNC18(tp, dp, link_name, ip->i_ino, resblks);
	if (error)
		goto out_trans_cancel;
	FUNC38(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
	FUNC41(tp, dp, XFS_ILOG_CORE);

	/*
	 * If this is a synchronous mount, make sure that the
	 * symlink transaction goes to disk before returning to
	 * the user.
	 */
	if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC)) {
		FUNC43(tp);
	}

	error = FUNC36(tp);
	if (error)
		goto out_release_inode;

	FUNC28(udqp);
	FUNC28(gdqp);
	FUNC28(pdqp);

	*ipp = ip;
	return 0;

out_trans_cancel:
	FUNC35(tp);
out_release_inode:
	/*
	 * Wait until after the current transaction is aborted to finish the
	 * setup of the inode and release the inode.  This prevents recursive
	 * transactions and deadlocks from xfs_inactive.
	 */
	if (ip) {
		FUNC20(ip);
		FUNC24(ip);
	}

	FUNC28(udqp);
	FUNC28(gdqp);
	FUNC28(pdqp);

	if (unlock_dp_on_error)
		FUNC25(dp, XFS_ILOCK_EXCL);
	return error;
}