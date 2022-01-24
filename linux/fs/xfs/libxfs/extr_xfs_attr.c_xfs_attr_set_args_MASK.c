#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ di_aformat; scalar_t__ di_anextents; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct xfs_da_args {int /*<<< orphan*/  trans; struct xfs_inode* dp; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ XFS_DINODE_FMT_EXTENTS ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int FUNC0 (struct xfs_da_args*) ; 
 int FUNC1 (struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_da_args*) ; 
 int FUNC3 (struct xfs_da_args*,struct xfs_buf**) ; 
 int FUNC4 (struct xfs_inode*,struct xfs_da_args*) ; 
 scalar_t__ FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct xfs_buf*) ; 

int
FUNC10(
	struct xfs_da_args	*args)
{
	struct xfs_inode	*dp = args->dp;
	struct xfs_buf          *leaf_bp = NULL;
	int			error;

	/*
	 * If the attribute list is non-existent or a shortform list,
	 * upgrade it to a single-leaf-block attribute list.
	 */
	if (dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL ||
	    (dp->i_d.di_aformat == XFS_DINODE_FMT_EXTENTS &&
	     dp->i_d.di_anextents == 0)) {

		/*
		 * Build initial attribute list (if required).
		 */
		if (dp->i_d.di_aformat == XFS_DINODE_FMT_EXTENTS)
			FUNC2(args);

		/*
		 * Try to add the attr to the attribute list in the inode.
		 */
		error = FUNC4(dp, args);
		if (error != -ENOSPC)
			return error;

		/*
		 * It won't fit in the shortform, transform to a leaf block.
		 * GROT: another possible req'mt for a double-split btree op.
		 */
		error = FUNC3(args, &leaf_bp);
		if (error)
			return error;

		/*
		 * Prevent the leaf buffer from being unlocked so that a
		 * concurrent AIL push cannot grab the half-baked leaf
		 * buffer and run into problems with the write verifier.
		 * Once we're done rolling the transaction we can release
		 * the hold and add the attr to the leaf.
		 */
		FUNC7(args->trans, leaf_bp);
		error = FUNC6(&args->trans);
		FUNC8(args->trans, leaf_bp);
		if (error) {
			FUNC9(args->trans, leaf_bp);
			return error;
		}
	}

	if (FUNC5(dp, XFS_ATTR_FORK))
		error = FUNC0(args);
	else
		error = FUNC1(args);
	return error;
}