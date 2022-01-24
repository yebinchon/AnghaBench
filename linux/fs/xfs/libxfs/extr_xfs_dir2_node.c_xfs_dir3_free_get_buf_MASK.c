#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_dir2_db_t ;
struct TYPE_8__ {int /*<<< orphan*/  geo; struct xfs_inode* dp; struct xfs_trans* trans; } ;
typedef  TYPE_3__ xfs_da_args_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_4__ m_sb; } ;
struct xfs_inode {TYPE_2__* d_ops; int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;
struct TYPE_6__ {int /*<<< orphan*/  uuid; void* owner; void* blkno; } ;
struct xfs_dir3_icfree_hdr {int /*<<< orphan*/  magic; TYPE_1__ hdr; } ;
struct xfs_dir3_free_hdr {int /*<<< orphan*/  magic; TYPE_1__ hdr; } ;
struct xfs_buf {struct xfs_dir3_icfree_hdr* b_addr; int /*<<< orphan*/  b_bn; int /*<<< orphan*/ * b_ops; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_7__ {int /*<<< orphan*/  (* free_hdr_to_disk ) (struct xfs_dir3_icfree_hdr*,struct xfs_dir3_icfree_hdr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BLFT_DIR_FREE_BUF ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_DIR2_FREE_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_FREE_MAGIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_dir3_icfree_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_dir3_icfree_hdr*,struct xfs_dir3_icfree_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int,struct xfs_buf**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_dir3_free_buf_ops ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(
	xfs_da_args_t		*args,
	xfs_dir2_db_t		fbno,
	struct xfs_buf		**bpp)
{
	struct xfs_trans	*tp = args->trans;
	struct xfs_inode	*dp = args->dp;
	struct xfs_mount	*mp = dp->i_mount;
	struct xfs_buf		*bp;
	int			error;
	struct xfs_dir3_icfree_hdr hdr;

	error = FUNC4(tp, dp, FUNC5(args->geo, fbno),
				   -1, &bp, XFS_DATA_FORK);
	if (error)
		return error;

	FUNC7(tp, bp, XFS_BLFT_DIR_FREE_BUF);
	bp->b_ops = &xfs_dir3_free_buf_ops;

	/*
	 * Initialize the new block to be empty, and remember
	 * its first slot as our empty slot.
	 */
	FUNC1(bp->b_addr, 0, sizeof(struct xfs_dir3_free_hdr));
	FUNC1(&hdr, 0, sizeof(hdr));

	if (FUNC6(&mp->m_sb)) {
		struct xfs_dir3_free_hdr *hdr3 = bp->b_addr;

		hdr.magic = XFS_DIR3_FREE_MAGIC;

		hdr3->hdr.blkno = FUNC0(bp->b_bn);
		hdr3->hdr.owner = FUNC0(dp->i_ino);
		FUNC3(&hdr3->hdr.uuid, &mp->m_sb.sb_meta_uuid);
	} else
		hdr.magic = XFS_DIR2_FREE_MAGIC;
	dp->d_ops->free_hdr_to_disk(bp->b_addr, &hdr);
	*bpp = bp;
	return 0;
}