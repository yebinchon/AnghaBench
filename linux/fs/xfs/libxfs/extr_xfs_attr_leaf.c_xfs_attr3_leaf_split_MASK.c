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
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct xfs_da_state_blk {scalar_t__ magic; int /*<<< orphan*/  bp; void* hashval; int /*<<< orphan*/  blkno; } ;
struct xfs_da_state {int /*<<< orphan*/  args; scalar_t__ inleaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_ATTR_LEAF_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC10(
	struct xfs_da_state	*state,
	struct xfs_da_state_blk	*oldblk,
	struct xfs_da_state_blk	*newblk)
{
	xfs_dablk_t blkno;
	int error;

	FUNC3(state->args);

	/*
	 * Allocate space for a new leaf node.
	 */
	FUNC0(oldblk->magic == XFS_ATTR_LEAF_MAGIC);
	error = FUNC9(state->args, &blkno);
	if (error)
		return error;
	error = FUNC5(state->args, blkno, &newblk->bp);
	if (error)
		return error;
	newblk->blkno = blkno;
	newblk->magic = XFS_ATTR_LEAF_MAGIC;

	/*
	 * Rebalance the entries across the two leaves.
	 * NOTE: rebalance() currently depends on the 2nd block being empty.
	 */
	FUNC6(state, oldblk, newblk);
	error = FUNC8(state, oldblk, newblk);
	if (error)
		return error;

	/*
	 * Save info on "old" attribute for "atomic rename" ops, leaf_add()
	 * modifies the index/blkno/rmtblk/rmtblkcnt fields to show the
	 * "new" attrs info.  Will need the "old" info to remove it later.
	 *
	 * Insert the "new" entry in the correct block.
	 */
	if (state->inleaf) {
		FUNC2(state->args);
		error = FUNC4(oldblk->bp, state->args);
	} else {
		FUNC1(state->args);
		error = FUNC4(newblk->bp, state->args);
	}

	/*
	 * Update last hashval in each block since we added the name.
	 */
	oldblk->hashval = FUNC7(oldblk->bp, NULL);
	newblk->hashval = FUNC7(newblk->bp, NULL);
	return error;
}