#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmphdr ;
struct xfs_da_state_blk {void* hashval; TYPE_1__* bp; } ;
struct xfs_da_state {TYPE_4__* args; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_entry {int /*<<< orphan*/  hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; scalar_t__ holes; scalar_t__ firstused; int /*<<< orphan*/  back; int /*<<< orphan*/  forw; int /*<<< orphan*/  magic; } ;
struct TYPE_10__ {scalar_t__ blksize; } ;
struct TYPE_9__ {TYPE_5__* geo; int /*<<< orphan*/  trans; } ;
struct TYPE_8__ {struct xfs_attr_leafblock* b_addr; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_attr_leafblock*) ; 
 struct xfs_attr_leafblock* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_attr_leafblock*,struct xfs_attr_leafblock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_attr3_icleaf_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 struct xfs_attr_leaf_entry* FUNC6 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ; 
 scalar_t__ FUNC8 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,struct xfs_attr_leafblock*,struct xfs_attr3_icleaf_hdr*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,struct xfs_attr_leafblock*,struct xfs_attr3_icleaf_hdr*,int /*<<< orphan*/ ,struct xfs_attr_leafblock*,struct xfs_attr3_icleaf_hdr*,int,int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,struct xfs_attr3_icleaf_hdr*,TYPE_1__*,struct xfs_attr3_icleaf_hdr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC13(
	struct xfs_da_state	*state,
	struct xfs_da_state_blk	*drop_blk,
	struct xfs_da_state_blk	*save_blk)
{
	struct xfs_attr_leafblock *drop_leaf = drop_blk->bp->b_addr;
	struct xfs_attr_leafblock *save_leaf = save_blk->bp->b_addr;
	struct xfs_attr3_icleaf_hdr drophdr;
	struct xfs_attr3_icleaf_hdr savehdr;
	struct xfs_attr_leaf_entry *entry;

	FUNC5(state->args);

	drop_leaf = drop_blk->bp->b_addr;
	save_leaf = save_blk->bp->b_addr;
	FUNC7(state->args->geo, &drophdr, drop_leaf);
	FUNC7(state->args->geo, &savehdr, save_leaf);
	entry = FUNC6(drop_leaf);

	/*
	 * Save last hashval from dying block for later Btree fixup.
	 */
	drop_blk->hashval = FUNC0(entry[drophdr.count - 1].hashval);

	/*
	 * Check if we need a temp buffer, or can we do it in place.
	 * Note that we don't check "leaf" for holes because we will
	 * always be dropping it, toosmall() decided that for us already.
	 */
	if (savehdr.holes == 0) {
		/*
		 * dest leaf has no holes, so we add there.  May need
		 * to make some room in the entry array.
		 */
		if (FUNC11(save_blk->bp, &savehdr,
					 drop_blk->bp, &drophdr)) {
			FUNC10(state->args,
						drop_leaf, &drophdr, 0,
						save_leaf, &savehdr, 0,
						drophdr.count);
		} else {
			FUNC10(state->args,
						drop_leaf, &drophdr, 0,
						save_leaf, &savehdr,
						savehdr.count, drophdr.count);
		}
	} else {
		/*
		 * Destination has holes, so we make a temporary copy
		 * of the leaf and add them both to that.
		 */
		struct xfs_attr_leafblock *tmp_leaf;
		struct xfs_attr3_icleaf_hdr tmphdr;

		tmp_leaf = FUNC2(state->args->geo->blksize, 0);

		/*
		 * Copy the header into the temp leaf so that all the stuff
		 * not in the incore header is present and gets copied back in
		 * once we've moved all the entries.
		 */
		FUNC3(tmp_leaf, save_leaf, FUNC8(save_leaf));

		FUNC4(&tmphdr, 0, sizeof(tmphdr));
		tmphdr.magic = savehdr.magic;
		tmphdr.forw = savehdr.forw;
		tmphdr.back = savehdr.back;
		tmphdr.firstused = state->args->geo->blksize;

		/* write the header to the temp buffer to initialise it */
		FUNC9(state->args->geo, tmp_leaf, &tmphdr);

		if (FUNC11(save_blk->bp, &savehdr,
					 drop_blk->bp, &drophdr)) {
			FUNC10(state->args,
						drop_leaf, &drophdr, 0,
						tmp_leaf, &tmphdr, 0,
						drophdr.count);
			FUNC10(state->args,
						save_leaf, &savehdr, 0,
						tmp_leaf, &tmphdr, tmphdr.count,
						savehdr.count);
		} else {
			FUNC10(state->args,
						save_leaf, &savehdr, 0,
						tmp_leaf, &tmphdr, 0,
						savehdr.count);
			FUNC10(state->args,
						drop_leaf, &drophdr, 0,
						tmp_leaf, &tmphdr, tmphdr.count,
						drophdr.count);
		}
		FUNC3(save_leaf, tmp_leaf, state->args->geo->blksize);
		savehdr = tmphdr; /* struct copy */
		FUNC1(tmp_leaf);
	}

	FUNC9(state->args->geo, save_leaf, &savehdr);
	FUNC12(state->args->trans, save_blk->bp, 0,
					   state->args->geo->blksize - 1);

	/*
	 * Copy out last hashval in each block for B-tree code.
	 */
	entry = FUNC6(save_leaf);
	save_blk->hashval = FUNC0(entry[savehdr.count - 1].hashval);
}