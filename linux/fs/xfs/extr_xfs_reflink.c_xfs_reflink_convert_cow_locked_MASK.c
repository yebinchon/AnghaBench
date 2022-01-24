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
typedef  scalar_t__ xfs_filblks_t ;
struct xfs_inode {int /*<<< orphan*/  i_cowfp; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_state; int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startblock; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_COW_FORK ; 
 scalar_t__ XFS_EXT_NORM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct xfs_inode*,int /*<<< orphan*/ ,struct xfs_iext_cursor*,struct xfs_btree_cur**,struct xfs_bmbt_irec*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,int /*<<< orphan*/ ,scalar_t__,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(
	struct xfs_inode	*ip,
	xfs_fileoff_t		offset_fsb,
	xfs_filblks_t		count_fsb)
{
	struct xfs_iext_cursor	icur;
	struct xfs_bmbt_irec	got;
	struct xfs_btree_cur	*dummy_cur = NULL;
	int			dummy_logflags;
	int			error = 0;

	if (!FUNC3(ip, ip->i_cowfp, offset_fsb, &icur, &got))
		return 0;

	do {
		if (got.br_startoff >= offset_fsb + count_fsb)
			break;
		if (got.br_state == XFS_EXT_NORM)
			continue;
		if (FUNC0(FUNC1(got.br_startblock)))
			return -EIO;

		FUNC5(&got, offset_fsb, count_fsb);
		if (!got.br_blockcount)
			continue;

		got.br_state = XFS_EXT_NORM;
		error = FUNC2(NULL, ip,
				XFS_COW_FORK, &icur, &dummy_cur, &got,
				&dummy_logflags);
		if (error)
			return error;
	} while (FUNC4(ip->i_cowfp, &icur, &got));

	return error;
}