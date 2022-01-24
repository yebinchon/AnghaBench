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
typedef  int /*<<< orphan*/  xfs_daddr_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_BLFT_ATTR_LEAF_BUF ; 
 int /*<<< orphan*/  xfs_attr3_leaf_buf_ops ; 
 int FUNC0 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 

int
FUNC2(
	struct xfs_trans	*tp,
	struct xfs_inode	*dp,
	xfs_dablk_t		bno,
	xfs_daddr_t		mappedbno,
	struct xfs_buf		**bpp)
{
	int			err;

	err = FUNC0(tp, dp, bno, mappedbno, bpp,
				XFS_ATTR_FORK, &xfs_attr3_leaf_buf_ops);
	if (!err && tp && *bpp)
		FUNC1(tp, *bpp, XFS_BLFT_ATTR_LEAF_BUF);
	return err;
}