#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xfs_da_state_blk {scalar_t__ magic; int /*<<< orphan*/  index; int /*<<< orphan*/  bp; } ;
struct TYPE_4__ {int active; struct xfs_da_state_blk* blk; } ;
struct xfs_da_state {int extravalid; TYPE_2__ path; int /*<<< orphan*/  extrablk; int /*<<< orphan*/  mp; struct xfs_da_args* args; } ;
struct xfs_da_args {TYPE_1__* dp; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_da_state*,TYPE_2__*) ; 
 int FUNC3 (struct xfs_da_state*) ; 
 int FUNC4 (struct xfs_da_state*,int*) ; 
 struct xfs_da_state* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_da_state*) ; 
 int FUNC7 (struct xfs_da_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (struct xfs_da_state*) ; 

int						/* error */
FUNC9(
	struct xfs_da_args	*args)		/* operation arguments */
{
	struct xfs_da_state_blk	*blk;		/* leaf block */
	int			error;		/* error return value */
	int			rval;		/* operation return value */
	struct xfs_da_state	*state;		/* btree cursor */

	FUNC1(args);

	/*
	 * Allocate and initialize the btree cursor.
	 */
	state = FUNC5();
	state->args = args;
	state->mp = args->dp->i_mount;

	/* Look up the entry we're deleting, set up the cursor. */
	error = FUNC4(state, &rval);
	if (error)
		goto out_free;

	/* Didn't find it, upper layer screwed up. */
	if (rval != -EEXIST) {
		error = rval;
		goto out_free;
	}

	blk = &state->path.blk[state->path.active - 1];
	FUNC0(blk->magic == XFS_DIR2_LEAFN_MAGIC);
	FUNC0(state->extravalid);
	/*
	 * Remove the leaf and data entries.
	 * Extrablk refers to the data block.
	 */
	error = FUNC7(args, blk->bp, blk->index,
		&state->extrablk, &rval);
	if (error)
		goto out_free;
	/*
	 * Fix the hash values up the btree.
	 */
	FUNC2(state, &state->path);
	/*
	 * If we need to join leaf blocks, do it.
	 */
	if (rval && state->path.active > 1)
		error = FUNC3(state);
	/*
	 * If no errors so far, try conversion to leaf format.
	 */
	if (!error)
		error = FUNC8(state);
out_free:
	FUNC6(state);
	return error;
}