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
struct xfs_da_args {size_t index; int /*<<< orphan*/  dp; int /*<<< orphan*/  trans; int /*<<< orphan*/  geo; int /*<<< orphan*/  blkno; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_name_remote {int flags; scalar_t__ valuelen; scalar_t__ valueblk; } ;
struct xfs_attr_leaf_entry {int flags; scalar_t__ valuelen; scalar_t__ valueblk; } ;
struct xfs_attr3_icleaf_hdr {size_t count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_ATTR_INCOMPLETE ; 
 int XFS_ATTR_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_attr_leafblock*,struct xfs_attr_leaf_name_remote*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_da_args*) ; 
 struct xfs_attr_leaf_name_remote* FUNC3 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ; 
 struct xfs_attr_leaf_name_remote* FUNC5 (struct xfs_attr_leafblock*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(
	struct xfs_da_args	*args)
{
	struct xfs_attr_leafblock *leaf;
	struct xfs_attr_leaf_entry *entry;
	struct xfs_attr_leaf_name_remote *name_rmt;
	struct xfs_buf		*bp;
	int error;
#ifdef DEBUG
	struct xfs_attr3_icleaf_hdr ichdr;
#endif

	FUNC2(args);

	/*
	 * Set up the operation.
	 */
	error = FUNC6(args->trans, args->dp, args->blkno, -1, &bp);
	if (error)
		return error;

	leaf = bp->b_addr;
#ifdef DEBUG
	xfs_attr3_leaf_hdr_from_disk(args->geo, &ichdr, leaf);
	ASSERT(args->index < ichdr.count);
	ASSERT(args->index >= 0);
#endif
	entry = &FUNC3(leaf)[args->index];

	FUNC0((entry->flags & XFS_ATTR_INCOMPLETE) == 0);
	entry->flags |= XFS_ATTR_INCOMPLETE;
	FUNC7(args->trans, bp,
			FUNC1(leaf, entry, sizeof(*entry)));
	if ((entry->flags & XFS_ATTR_LOCAL) == 0) {
		name_rmt = FUNC5(leaf, args->index);
		name_rmt->valueblk = 0;
		name_rmt->valuelen = 0;
		FUNC7(args->trans, bp,
			 FUNC1(leaf, name_rmt, sizeof(*name_rmt)));
	}

	/*
	 * Commit the flag value change and start the next trans in series.
	 */
	return FUNC8(&args->trans, args->dp);
}