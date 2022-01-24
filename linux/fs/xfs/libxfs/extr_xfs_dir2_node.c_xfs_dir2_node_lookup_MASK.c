#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  TYPE_5__ xfs_dir2_data_entry_t ;
struct TYPE_18__ {int index; TYPE_8__* bp; } ;
struct TYPE_17__ {int active; TYPE_2__* blk; } ;
struct TYPE_20__ {TYPE_4__ extrablk; scalar_t__ extravalid; TYPE_3__ path; int /*<<< orphan*/  mp; TYPE_7__* args; } ;
typedef  TYPE_6__ xfs_da_state_t ;
struct TYPE_21__ {scalar_t__ cmpresult; int /*<<< orphan*/  trans; TYPE_1__* dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;
struct TYPE_22__ {scalar_t__ b_addr; } ;
struct TYPE_16__ {TYPE_8__* bp; } ;
struct TYPE_15__ {int /*<<< orphan*/  i_mount; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ XFS_CMP_CASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int FUNC1 (TYPE_6__*,int*) ; 
 TYPE_6__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_8__*) ; 

int						/* error */
FUNC6(
	xfs_da_args_t	*args)			/* operation arguments */
{
	int		error;			/* error return value */
	int		i;			/* btree level */
	int		rval;			/* operation return value */
	xfs_da_state_t	*state;			/* btree cursor */

	FUNC0(args);

	/*
	 * Allocate and initialize the btree cursor.
	 */
	state = FUNC2();
	state->args = args;
	state->mp = args->dp->i_mount;
	/*
	 * Fill in the path to the entry in the cursor.
	 */
	error = FUNC1(state, &rval);
	if (error)
		rval = error;
	else if (rval == -ENOENT && args->cmpresult == XFS_CMP_CASE) {
		/* If a CI match, dup the actual name and return -EEXIST */
		xfs_dir2_data_entry_t	*dep;

		dep = (xfs_dir2_data_entry_t *)
			((char *)state->extrablk.bp->b_addr +
						 state->extrablk.index);
		rval = FUNC4(args, dep->name, dep->namelen);
	}
	/*
	 * Release the btree blocks and leaf block.
	 */
	for (i = 0; i < state->path.active; i++) {
		FUNC5(args->trans, state->path.blk[i].bp);
		state->path.blk[i].bp = NULL;
	}
	/*
	 * Release the data block if we have it.
	 */
	if (state->extravalid && state->extrablk.bp) {
		FUNC5(args->trans, state->extrablk.bp);
		state->extrablk.bp = NULL;
	}
	FUNC3(state);
	return rval;
}