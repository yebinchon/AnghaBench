#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_20__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct TYPE_16__ {TYPE_6__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_17__ {TYPE_1__* d_ops; int /*<<< orphan*/  i_ino; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_dir2_db_t ;
struct TYPE_18__ {void* length; void* freetag; } ;
typedef  TYPE_4__ xfs_dir2_data_unused_t ;
struct xfs_dir3_blk_hdr {void* magic; int /*<<< orphan*/  uuid; void* owner; void* blkno; } ;
typedef  struct xfs_dir3_blk_hdr xfs_dir2_data_hdr_t ;
struct TYPE_19__ {TYPE_8__* geo; int /*<<< orphan*/ * trans; TYPE_3__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
typedef  int uint ;
struct xfs_dir2_data_free {void* length; void* offset; } ;
struct xfs_buf {int /*<<< orphan*/  b_bn; struct xfs_dir3_blk_hdr* b_addr; int /*<<< orphan*/ * b_ops; } ;
struct TYPE_21__ {int blksize; } ;
struct TYPE_15__ {int data_entry_offset; TYPE_4__* (* data_unused_p ) (struct xfs_dir3_blk_hdr*) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (struct xfs_dir3_blk_hdr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BLFT_DIR_DATA_BUF ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DIR2_DATA_FD_COUNT ; 
 int XFS_DIR2_DATA_FREE_TAG ; 
 int /*<<< orphan*/  XFS_DIR2_DATA_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_DATA_MAGIC ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dir3_blk_hdr*,int /*<<< orphan*/ ,int) ; 
 struct xfs_dir2_data_free* FUNC4 (struct xfs_dir3_blk_hdr*) ; 
 TYPE_4__* FUNC5 (struct xfs_dir3_blk_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int,struct xfs_buf**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,struct xfs_buf*,TYPE_4__*) ; 
 void** FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_dir3_data_buf_ops ; 
 scalar_t__ FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct xfs_buf*,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC14(
	xfs_da_args_t		*args,		/* directory operation args */
	xfs_dir2_db_t		blkno,		/* logical dir block number */
	struct xfs_buf		**bpp)		/* output block buffer */
{
	struct xfs_buf		*bp;		/* block buffer */
	xfs_dir2_data_hdr_t	*hdr;		/* data block header */
	xfs_inode_t		*dp;		/* incore directory inode */
	xfs_dir2_data_unused_t	*dup;		/* unused entry pointer */
	struct xfs_dir2_data_free *bf;
	int			error;		/* error return value */
	int			i;		/* bestfree index */
	xfs_mount_t		*mp;		/* filesystem mount point */
	xfs_trans_t		*tp;		/* transaction pointer */
	int                     t;              /* temp */

	dp = args->dp;
	mp = dp->i_mount;
	tp = args->trans;
	/*
	 * Get the buffer set up for the block.
	 */
	error = FUNC7(tp, dp, FUNC11(args->geo, blkno),
			       -1, &bp, XFS_DATA_FORK);
	if (error)
		return error;
	bp->b_ops = &xfs_dir3_data_buf_ops;
	FUNC13(tp, bp, XFS_BLFT_DIR_DATA_BUF);

	/*
	 * Initialize the header.
	 */
	hdr = bp->b_addr;
	if (FUNC12(&mp->m_sb)) {
		struct xfs_dir3_blk_hdr *hdr3 = bp->b_addr;

		FUNC3(hdr3, 0, sizeof(*hdr3));
		hdr3->magic = FUNC1(XFS_DIR3_DATA_MAGIC);
		hdr3->blkno = FUNC2(bp->b_bn);
		hdr3->owner = FUNC2(dp->i_ino);
		FUNC6(&hdr3->uuid, &mp->m_sb.sb_meta_uuid);

	} else
		hdr->magic = FUNC1(XFS_DIR2_DATA_MAGIC);

	bf = dp->d_ops->data_bestfree_p(hdr);
	bf[0].offset = FUNC0(dp->d_ops->data_entry_offset);
	for (i = 1; i < XFS_DIR2_DATA_FD_COUNT; i++) {
		bf[i].length = 0;
		bf[i].offset = 0;
	}

	/*
	 * Set up an unused entry for the block's body.
	 */
	dup = dp->d_ops->data_unused_p(hdr);
	dup->freetag = FUNC0(XFS_DIR2_DATA_FREE_TAG);

	t = args->geo->blksize - (uint)dp->d_ops->data_entry_offset;
	bf[0].length = FUNC0(t);
	dup->length = FUNC0(t);
	*FUNC10(dup) = FUNC0((char *)dup - (char *)hdr);
	/*
	 * Log it and return it.
	 */
	FUNC8(args, bp);
	FUNC9(args, bp, dup);
	*bpp = bp;
	return 0;
}