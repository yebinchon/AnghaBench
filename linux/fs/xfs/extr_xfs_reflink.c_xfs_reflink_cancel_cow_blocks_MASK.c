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
struct xfs_trans {scalar_t__ t_firstblock; } ;
struct xfs_inode {int dummy; } ;
struct xfs_ifork {int /*<<< orphan*/  if_bytes; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_blockcount; scalar_t__ br_state; int /*<<< orphan*/  br_startblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NULLFSBLOCK ; 
 int /*<<< orphan*/  XFS_COW_FORK ; 
 scalar_t__ XFS_EXT_UNWRITTEN ; 
 struct xfs_ifork* FUNC1 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_QMOPT_RES_REGBLKS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*,struct xfs_bmbt_irec*) ; 
 int FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ,struct xfs_iext_cursor*,struct xfs_bmbt_irec*,struct xfs_bmbt_irec*) ; 
 int FUNC7 (struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,struct xfs_ifork*,scalar_t__*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_ifork*,struct xfs_iext_cursor*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_trans*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct xfs_inode*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ; 

int
FUNC16(
	struct xfs_inode		*ip,
	struct xfs_trans		**tpp,
	xfs_fileoff_t			offset_fsb,
	xfs_fileoff_t			end_fsb,
	bool				cancel_real)
{
	struct xfs_ifork		*ifp = FUNC1(ip, XFS_COW_FORK);
	struct xfs_bmbt_irec		got, del;
	struct xfs_iext_cursor		icur;
	int				error = 0;

	if (!FUNC12(ip))
		return 0;
	if (!FUNC9(ip, ifp, &end_fsb, &icur, &got))
		return 0;

	/* Walk backwards until we're out of the I/O range... */
	while (got.br_startoff + got.br_blockcount > offset_fsb) {
		del = got;
		FUNC15(&del, offset_fsb, end_fsb - offset_fsb);

		/* Extent delete may have bumped ext forward */
		if (!del.br_blockcount) {
			FUNC10(ifp, &icur);
			goto next_extent;
		}

		FUNC3(ip, &del);

		if (FUNC2(del.br_startblock)) {
			error = FUNC6(ip, XFS_COW_FORK,
					&icur, &got, &del);
			if (error)
				break;
		} else if (del.br_state == XFS_EXT_UNWRITTEN || cancel_real) {
			FUNC0((*tpp)->t_firstblock == NULLFSBLOCK);

			/* Free the CoW orphan record. */
			FUNC13(*tpp, del.br_startblock,
					del.br_blockcount);

			FUNC4(*tpp, del.br_startblock,
					  del.br_blockcount, NULL);

			/* Roll the transaction */
			error = FUNC7(tpp);
			if (error)
				break;

			/* Remove the mapping from the CoW fork. */
			FUNC5(ip, &icur, &got, &del);

			/* Remove the quota reservation */
			error = FUNC14(NULL, ip,
					-(long)del.br_blockcount, 0,
					XFS_QMOPT_RES_REGBLKS);
			if (error)
				break;
		} else {
			/* Didn't do anything, push cursor back. */
			FUNC10(ifp, &icur);
		}
next_extent:
		if (!FUNC8(ifp, &icur, &got))
			break;
	}

	/* clear tag if cow fork is emptied */
	if (!ifp->if_bytes)
		FUNC11(ip);
	return error;
}