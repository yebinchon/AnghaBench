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
typedef  scalar_t__ xfs_ufsize_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  int /*<<< orphan*/  uint ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfs_mount {int /*<<< orphan*/  m_generation; TYPE_1__* m_super; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; } ;
struct iomap {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; TYPE_2__* i_sb; } ;
typedef  scalar_t__ loff_t ;
typedef  enum xfs_prealloc_flags { ____Placeholder_xfs_prealloc_flags } xfs_prealloc_flags ;
struct TYPE_4__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_3__ {scalar_t__ s_maxbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DELAYSTARTBLOCK ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 scalar_t__ HOLESTARTBLOCK ; 
 scalar_t__ FUNC1 (int) ; 
 int XFS_BMAPI_ENTIRE ; 
 scalar_t__ FUNC2 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct xfs_mount*) ; 
 struct xfs_inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  XFS_ILOCK_SHARED ; 
 int /*<<< orphan*/  XFS_IOLOCK_EXCL ; 
 scalar_t__ FUNC6 (struct xfs_inode*) ; 
 int XFS_PREALLOC_SET ; 
 int XFS_PREALLOC_SYNC ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xfs_inode*,scalar_t__,scalar_t__,struct xfs_bmbt_irec*,int*,int) ; 
 int FUNC13 (struct xfs_inode*,struct iomap*,struct xfs_bmbt_irec*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_inode*) ; 
 int FUNC16 (struct xfs_inode*,scalar_t__,scalar_t__,struct xfs_bmbt_irec*,int) ; 
 scalar_t__ FUNC17 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct xfs_inode*,int) ; 

int
FUNC20(
	struct inode		*inode,
	loff_t			offset,
	u64			length,
	struct iomap		*iomap,
	bool			write,
	u32			*device_generation)
{
	struct xfs_inode	*ip = FUNC5(inode);
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_bmbt_irec	imap;
	xfs_fileoff_t		offset_fsb, end_fsb;
	loff_t			limit;
	int			bmapi_flags = XFS_BMAPI_ENTIRE;
	int			nimaps = 1;
	uint			lock_flags;
	int			error = 0;

	if (FUNC4(mp))
		return -EIO;

	/*
	 * We can't export inodes residing on the realtime device.  The realtime
	 * device doesn't have a UUID to identify it, so the client has no way
	 * to find it.
	 */
	if (FUNC6(ip))
		return -ENXIO;

	/*
	 * The pNFS block layout spec actually supports reflink like
	 * functionality, but the Linux pNFS server doesn't implement it yet.
	 */
	if (FUNC17(ip))
		return -ENXIO;

	/*
	 * Lock out any other I/O before we flush and invalidate the pagecache,
	 * and then hand out a layout to the remote system.  This is very
	 * similar to direct I/O, except that the synchronization is much more
	 * complicated.  See the comment near xfs_break_leased_layouts
	 * for a detailed explanation.
	 */
	FUNC14(ip, XFS_IOLOCK_EXCL);

	error = -EINVAL;
	limit = mp->m_super->s_maxbytes;
	if (!write)
		limit = FUNC10(limit, FUNC11(FUNC8(inode),
				     inode->i_sb->s_blocksize));
	if (offset > limit)
		goto out_unlock;
	if (offset > limit - length)
		length = limit - offset;

	error = FUNC7(inode->i_mapping);
	if (error)
		goto out_unlock;
	error = FUNC9(inode->i_mapping);
	if (FUNC1(error))
		return error;

	end_fsb = FUNC2(mp, (xfs_ufsize_t)offset + length);
	offset_fsb = FUNC3(mp, offset);

	lock_flags = FUNC15(ip);
	error = FUNC12(ip, offset_fsb, end_fsb - offset_fsb,
				&imap, &nimaps, bmapi_flags);
	FUNC18(ip, lock_flags);

	if (error)
		goto out_unlock;

	if (write) {
		enum xfs_prealloc_flags	flags = 0;

		FUNC0(imap.br_startblock != DELAYSTARTBLOCK);

		if (!nimaps || imap.br_startblock == HOLESTARTBLOCK) {
			/*
			 * xfs_iomap_write_direct() expects to take ownership of
			 * the shared ilock.
			 */
			FUNC14(ip, XFS_ILOCK_SHARED);
			error = FUNC16(ip, offset, length,
						       &imap, nimaps);
			if (error)
				goto out_unlock;

			/*
			 * Ensure the next transaction is committed
			 * synchronously so that the blocks allocated and
			 * handed out to the client are guaranteed to be
			 * present even after a server crash.
			 */
			flags |= XFS_PREALLOC_SET | XFS_PREALLOC_SYNC;
		}

		error = FUNC19(ip, flags);
		if (error)
			goto out_unlock;
	}
	FUNC18(ip, XFS_IOLOCK_EXCL);

	error = FUNC13(ip, iomap, &imap, false);
	*device_generation = mp->m_generation;
	return error;
out_unlock:
	FUNC18(ip, XFS_IOLOCK_EXCL);
	return error;
}