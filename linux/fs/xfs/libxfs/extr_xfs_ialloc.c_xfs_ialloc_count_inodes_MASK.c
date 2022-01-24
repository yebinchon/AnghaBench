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
typedef  int /*<<< orphan*/  xfs_agino_t ;
struct xfs_ialloc_count_inodes {int /*<<< orphan*/  freecount; int /*<<< orphan*/  count; int /*<<< orphan*/  member_0; } ;
struct xfs_btree_cur {scalar_t__ bc_btnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_BTNUM_INO ; 
 int FUNC1 (struct xfs_btree_cur*,int /*<<< orphan*/ ,struct xfs_ialloc_count_inodes*) ; 
 int /*<<< orphan*/  xfs_ialloc_count_inodes_rec ; 

int
FUNC2(
	struct xfs_btree_cur		*cur,
	xfs_agino_t			*count,
	xfs_agino_t			*freecount)
{
	struct xfs_ialloc_count_inodes	ci = {0};
	int				error;

	FUNC0(cur->bc_btnum == XFS_BTNUM_INO);
	error = FUNC1(cur, xfs_ialloc_count_inodes_rec, &ci);
	if (error)
		return error;

	*count = ci.count;
	*freecount = ci.freecount;
	return 0;
}