#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_12__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int /*<<< orphan*/  address; } ;
typedef  struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
struct TYPE_13__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  inumber; } ;
typedef  TYPE_3__ xfs_dir2_data_entry_t ;
struct TYPE_14__ {int /*<<< orphan*/  filetype; int /*<<< orphan*/  inumber; int /*<<< orphan*/  geo; TYPE_2__* dp; int /*<<< orphan*/ * trans; } ;
typedef  TYPE_4__ xfs_da_args_t ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* data_get_ftype ) (TYPE_3__*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xfs_dir2_leaf_entry* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,struct xfs_buf**,int*,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct xfs_buf*) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct xfs_buf*) ; 

int
FUNC10(
	xfs_da_args_t		*args)		/* operation arguments */
{
	struct xfs_buf		*dbp;		/* data block buffer */
	xfs_dir2_data_entry_t	*dep;		/* data block entry */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	int			index;		/* found entry index */
	struct xfs_buf		*lbp;		/* leaf buffer */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_entry_t	*lep;		/* leaf entry */
	xfs_trans_t		*tp;		/* transaction pointer */
	struct xfs_dir2_leaf_entry *ents;

	FUNC4(args);

	/*
	 * Look up name in the leaf block, returning both buffers and index.
	 */
	if ((error = FUNC6(args, &lbp, &index, &dbp))) {
		return error;
	}
	tp = args->trans;
	dp = args->dp;
	FUNC7(dp, lbp);
	leaf = lbp->b_addr;
	ents = dp->d_ops->leaf_ents_p(leaf);
	/*
	 * Get to the leaf entry and contained data entry address.
	 */
	lep = &ents[index];

	/*
	 * Point to the data entry.
	 */
	dep = (xfs_dir2_data_entry_t *)
	      ((char *)dbp->b_addr +
	       FUNC5(args->geo, FUNC0(lep->address)));
	/*
	 * Return the found inode number & CI name if appropriate
	 */
	args->inumber = FUNC1(dep->inumber);
	args->filetype = dp->d_ops->data_get_ftype(dep);
	error = FUNC8(args, dep->name, dep->namelen);
	FUNC9(tp, dbp);
	FUNC9(tp, lbp);
	return error;
}