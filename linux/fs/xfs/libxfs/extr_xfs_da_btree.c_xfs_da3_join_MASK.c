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
struct xfs_da_state_blk {scalar_t__ magic; int /*<<< orphan*/ * bp; int /*<<< orphan*/  blkno; } ;
struct TYPE_2__ {size_t active; struct xfs_da_state_blk* blk; } ;
struct xfs_da_state {TYPE_1__ path; int /*<<< orphan*/  args; TYPE_1__ altpath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  XFS_ATTR_LEAF_MAGIC 130 
#define  XFS_DA_NODE_MAGIC 129 
#define  XFS_DIR2_LEAFN_MAGIC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_da_state*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ; 
 int FUNC4 (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_da_state*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_da_state*,struct xfs_da_state_blk*) ; 
 int FUNC7 (struct xfs_da_state*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ; 
 int FUNC9 (struct xfs_da_state*,struct xfs_da_state_blk*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_da_state*) ; 
 int FUNC12 (struct xfs_da_state*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ; 

int
FUNC14(
	struct xfs_da_state	*state)
{
	struct xfs_da_state_blk	*drop_blk;
	struct xfs_da_state_blk	*save_blk;
	int			action = 0;
	int			error;

	FUNC1(state->args);

	drop_blk = &state->path.blk[ state->path.active-1 ];
	save_blk = &state->altpath.blk[ state->path.active-1 ];
	FUNC0(state->path.blk[0].magic == XFS_DA_NODE_MAGIC);
	FUNC0(drop_blk->magic == XFS_ATTR_LEAF_MAGIC ||
	       drop_blk->magic == XFS_DIR2_LEAFN_MAGIC);

	/*
	 * Walk back up the tree joining/deallocating as necessary.
	 * When we stop dropping blocks, break out.
	 */
	for (  ; state->path.active >= 2; drop_blk--, save_blk--,
		 state->path.active--) {
		/*
		 * See if we can combine the block with a neighbor.
		 *   (action == 0) => no options, just leave
		 *   (action == 1) => coalesce, then unlink
		 *   (action == 2) => block empty, unlink it
		 */
		switch (drop_blk->magic) {
		case XFS_ATTR_LEAF_MAGIC:
			error = FUNC2(state, &action);
			if (error)
				return error;
			if (action == 0)
				return 0;
			FUNC3(state, drop_blk, save_blk);
			break;
		case XFS_DIR2_LEAFN_MAGIC:
			error = FUNC12(state, &action);
			if (error)
				return error;
			if (action == 0)
				return 0;
			FUNC13(state, drop_blk, save_blk);
			break;
		case XFS_DA_NODE_MAGIC:
			/*
			 * Remove the offending node, fixup hashvals,
			 * check for a toosmall neighbor.
			 */
			FUNC6(state, drop_blk);
			FUNC5(state, &state->path);
			error = FUNC7(state, &action);
			if (error)
				return error;
			if (action == 0)
				return 0;
			FUNC8(state, drop_blk, save_blk);
			break;
		}
		FUNC5(state, &state->altpath);
		error = FUNC4(state, drop_blk, save_blk);
		FUNC11(state);
		if (error)
			return error;
		error = FUNC10(state->args, drop_blk->blkno,
							 drop_blk->bp);
		drop_blk->bp = NULL;
		if (error)
			return error;
	}
	/*
	 * We joined all the way to the top.  If it turns out that
	 * we only have one entry in the root, make the child block
	 * the new root.
	 */
	FUNC6(state, drop_blk);
	FUNC5(state, &state->path);
	error = FUNC9(state, &state->path.blk[0]);
	return error;
}