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
typedef  scalar_t__ xfs_fileoff_t ;
struct xfs_ifork {int if_flags; } ;
struct xfs_inode {struct xfs_ifork i_df; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {int /*<<< orphan*/  br_startblock; scalar_t__ br_blockcount; scalar_t__ br_startoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_IFEXTENTS ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ,struct xfs_iext_cursor*,struct xfs_bmbt_irec*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*,struct xfs_ifork*,scalar_t__*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ; 

int
FUNC9(
	struct xfs_inode	*ip,
	xfs_fileoff_t		start_fsb,
	xfs_fileoff_t		length)
{
	struct xfs_ifork	*ifp = &ip->i_df;
	xfs_fileoff_t		end_fsb = start_fsb + length;
	struct xfs_bmbt_irec	got, del;
	struct xfs_iext_cursor	icur;
	int			error = 0;

	FUNC0(ifp->if_flags & XFS_IFEXTENTS);

	FUNC6(ip, XFS_ILOCK_EXCL);
	if (!FUNC4(ip, ifp, &end_fsb, &icur, &got))
		goto out_unlock;

	while (got.br_startoff + got.br_blockcount > start_fsb) {
		del = got;
		FUNC8(&del, start_fsb, length);

		/*
		 * A delete can push the cursor forward. Step back to the
		 * previous extent on non-delalloc or extents outside the
		 * target range.
		 */
		if (!del.br_blockcount ||
		    !FUNC1(del.br_startblock)) {
			if (!FUNC5(ifp, &icur, &got))
				break;
			continue;
		}

		error = FUNC2(ip, XFS_DATA_FORK, &icur,
						  &got, &del);
		if (error || !FUNC3(ifp, &icur, &got))
			break;
	}

out_unlock:
	FUNC7(ip, XFS_ILOCK_EXCL);
	return error;
}