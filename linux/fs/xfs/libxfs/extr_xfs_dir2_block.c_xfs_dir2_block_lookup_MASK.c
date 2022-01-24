#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_15__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_hdr_t ;
struct TYPE_16__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  inumber; } ;
typedef  TYPE_4__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_tail_t ;
struct TYPE_17__ {int /*<<< orphan*/  trans; int /*<<< orphan*/  filetype; int /*<<< orphan*/  inumber; int /*<<< orphan*/  geo; TYPE_2__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* data_get_ftype ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__*,struct xfs_buf**,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct xfs_buf*) ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct xfs_buf*) ; 

int						/* error */
FUNC11(
	xfs_da_args_t		*args)		/* dir lookup arguments */
{
	xfs_dir2_data_hdr_t	*hdr;		/* block header */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf entries */
	struct xfs_buf		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* incore inode */
	int			ent;		/* entry index */
	int			error;		/* error return value */

	FUNC3(args);

	/*
	 * Get the buffer, look up the entry.
	 * If not found (ENOENT) then return, have no buffer.
	 */
	if ((error = FUNC5(args, &bp, &ent)))
		return error;
	dp = args->dp;
	hdr = bp->b_addr;
	FUNC8(dp, bp);
	btp = FUNC6(args->geo, hdr);
	blp = FUNC4(btp);
	/*
	 * Get the offset from the leaf entry, to point to the data.
	 */
	dep = (xfs_dir2_data_entry_t *)((char *)hdr +
			FUNC7(args->geo,
						FUNC0(blp[ent].address)));
	/*
	 * Fill in inode number, CI name if appropriate, release the block.
	 */
	args->inumber = FUNC1(dep->inumber);
	args->filetype = dp->d_ops->data_get_ftype(dep);
	error = FUNC9(args, dep->name, dep->namelen);
	FUNC10(args->trans, bp);
	return error;
}