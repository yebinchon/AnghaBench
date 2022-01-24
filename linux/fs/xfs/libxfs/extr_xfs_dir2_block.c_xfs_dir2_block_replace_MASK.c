#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_16__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_hdr_t ;
struct TYPE_17__ {int /*<<< orphan*/  inumber; } ;
typedef  TYPE_4__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_tail_t ;
struct TYPE_18__ {scalar_t__ inumber; int /*<<< orphan*/  filetype; int /*<<< orphan*/  geo; TYPE_2__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* data_put_ftype ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_5__*,struct xfs_buf**,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,struct xfs_buf*,TYPE_4__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct xfs_buf*) ; 

int						/* error */
FUNC12(
	xfs_da_args_t		*args)		/* directory operation args */
{
	xfs_dir2_data_hdr_t	*hdr;		/* block header */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf entries */
	struct xfs_buf		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* incore inode */
	int			ent;		/* leaf entry index */
	int			error;		/* error return value */

	FUNC5(args);

	/*
	 * Lookup the entry in the directory.  Get buffer and entry index.
	 * This will always succeed since the caller has already done a lookup.
	 */
	if ((error = FUNC7(args, &bp, &ent))) {
		return error;
	}
	dp = args->dp;
	hdr = bp->b_addr;
	btp = FUNC8(args->geo, hdr);
	blp = FUNC6(btp);
	/*
	 * Point to the data entry we need to change.
	 */
	dep = (xfs_dir2_data_entry_t *)((char *)hdr +
			FUNC10(args->geo,
						FUNC1(blp[ent].address)));
	FUNC0(FUNC2(dep->inumber) != args->inumber);
	/*
	 * Change the inode number to the new value.
	 */
	dep->inumber = FUNC3(args->inumber);
	dp->d_ops->data_put_ftype(dep, args->filetype);
	FUNC9(args, bp, dep);
	FUNC11(dp, bp);
	return 0;
}