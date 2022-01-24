#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_attr_leaf_entry_t ;
struct xfs_da_args {int index; TYPE_2__* geo; int /*<<< orphan*/  trans; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leaf_entry {int /*<<< orphan*/  nameidx; } ;
struct xfs_attr_leafblock {struct xfs_attr_leaf_entry hdr; } ;
struct xfs_attr3_icleaf_hdr {int count; int firstused; int usedbytes; int holes; TYPE_1__* freemap; } ;
struct TYPE_5__ {int blksize; int magicpct; } ;
struct TYPE_4__ {int size; int base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_ATTR_LEAF_MAPSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_attr_leafblock*,struct xfs_attr_leaf_entry*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_attr_leaf_entry*,struct xfs_attr_leaf_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_attr_leaf_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_da_args*) ; 
 struct xfs_attr_leaf_entry* FUNC6 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ; 
 int FUNC8 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct xfs_attr_leafblock*,struct xfs_attr3_icleaf_hdr*) ; 
 struct xfs_attr_leaf_entry* FUNC10 (struct xfs_attr_leafblock*,size_t) ; 
 int FUNC11 (struct xfs_attr_leafblock*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ) ; 

int
FUNC13(
	struct xfs_buf		*bp,
	struct xfs_da_args	*args)
{
	struct xfs_attr_leafblock *leaf;
	struct xfs_attr3_icleaf_hdr ichdr;
	struct xfs_attr_leaf_entry *entry;
	int			before;
	int			after;
	int			smallest;
	int			entsize;
	int			tablesize;
	int			tmp;
	int			i;

	FUNC5(args);

	leaf = bp->b_addr;
	FUNC7(args->geo, &ichdr, leaf);

	FUNC0(ichdr.count > 0 && ichdr.count < args->geo->blksize / 8);
	FUNC0(args->index >= 0 && args->index < ichdr.count);
	FUNC0(ichdr.firstused >= ichdr.count * sizeof(*entry) +
					FUNC8(leaf));

	entry = &FUNC6(leaf)[args->index];

	FUNC0(FUNC2(entry->nameidx) >= ichdr.firstused);
	FUNC0(FUNC2(entry->nameidx) < args->geo->blksize);

	/*
	 * Scan through free region table:
	 *    check for adjacency of free'd entry with an existing one,
	 *    find smallest free region in case we need to replace it,
	 *    adjust any map that borders the entry table,
	 */
	tablesize = ichdr.count * sizeof(xfs_attr_leaf_entry_t)
					+ FUNC8(leaf);
	tmp = ichdr.freemap[0].size;
	before = after = -1;
	smallest = XFS_ATTR_LEAF_MAPSIZE - 1;
	entsize = FUNC11(leaf, args->index);
	for (i = 0; i < XFS_ATTR_LEAF_MAPSIZE; i++) {
		FUNC0(ichdr.freemap[i].base < args->geo->blksize);
		FUNC0(ichdr.freemap[i].size < args->geo->blksize);
		if (ichdr.freemap[i].base == tablesize) {
			ichdr.freemap[i].base -= sizeof(xfs_attr_leaf_entry_t);
			ichdr.freemap[i].size += sizeof(xfs_attr_leaf_entry_t);
		}

		if (ichdr.freemap[i].base + ichdr.freemap[i].size ==
				FUNC2(entry->nameidx)) {
			before = i;
		} else if (ichdr.freemap[i].base ==
				(FUNC2(entry->nameidx) + entsize)) {
			after = i;
		} else if (ichdr.freemap[i].size < tmp) {
			tmp = ichdr.freemap[i].size;
			smallest = i;
		}
	}

	/*
	 * Coalesce adjacent freemap regions,
	 * or replace the smallest region.
	 */
	if ((before >= 0) || (after >= 0)) {
		if ((before >= 0) && (after >= 0)) {
			ichdr.freemap[before].size += entsize;
			ichdr.freemap[before].size += ichdr.freemap[after].size;
			ichdr.freemap[after].base = 0;
			ichdr.freemap[after].size = 0;
		} else if (before >= 0) {
			ichdr.freemap[before].size += entsize;
		} else {
			ichdr.freemap[after].base = FUNC2(entry->nameidx);
			ichdr.freemap[after].size += entsize;
		}
	} else {
		/*
		 * Replace smallest region (if it is smaller than free'd entry)
		 */
		if (ichdr.freemap[smallest].size < entsize) {
			ichdr.freemap[smallest].base = FUNC2(entry->nameidx);
			ichdr.freemap[smallest].size = entsize;
		}
	}

	/*
	 * Did we remove the first entry?
	 */
	if (FUNC2(entry->nameidx) == ichdr.firstused)
		smallest = 1;
	else
		smallest = 0;

	/*
	 * Compress the remaining entries and zero out the removed stuff.
	 */
	FUNC4(FUNC10(leaf, args->index), 0, entsize);
	ichdr.usedbytes -= entsize;
	FUNC12(args->trans, bp,
	     FUNC1(leaf, FUNC10(leaf, args->index),
				   entsize));

	tmp = (ichdr.count - args->index) * sizeof(xfs_attr_leaf_entry_t);
	FUNC3(entry, entry + 1, tmp);
	ichdr.count--;
	FUNC12(args->trans, bp,
	    FUNC1(leaf, entry, tmp + sizeof(xfs_attr_leaf_entry_t)));

	entry = &FUNC6(leaf)[ichdr.count];
	FUNC4(entry, 0, sizeof(xfs_attr_leaf_entry_t));

	/*
	 * If we removed the first entry, re-find the first used byte
	 * in the name area.  Note that if the entry was the "firstused",
	 * then we don't have a "hole" in our block resulting from
	 * removing the name.
	 */
	if (smallest) {
		tmp = args->geo->blksize;
		entry = FUNC6(leaf);
		for (i = ichdr.count - 1; i >= 0; entry++, i--) {
			FUNC0(FUNC2(entry->nameidx) >= ichdr.firstused);
			FUNC0(FUNC2(entry->nameidx) < args->geo->blksize);

			if (FUNC2(entry->nameidx) < tmp)
				tmp = FUNC2(entry->nameidx);
		}
		ichdr.firstused = tmp;
		FUNC0(ichdr.firstused != 0);
	} else {
		ichdr.holes = 1;	/* mark as needing compaction */
	}
	FUNC9(args->geo, leaf, &ichdr);
	FUNC12(args->trans, bp,
			  FUNC1(leaf, &leaf->hdr,
					  FUNC8(leaf)));

	/*
	 * Check if leaf is less than 50% full, caller may want to
	 * "join" the leaf with a sibling if so.
	 */
	tmp = ichdr.usedbytes + FUNC8(leaf) +
	      ichdr.count * sizeof(xfs_attr_leaf_entry_t);

	return tmp < args->geo->magicpct; /* leaf is < 37% full */
}