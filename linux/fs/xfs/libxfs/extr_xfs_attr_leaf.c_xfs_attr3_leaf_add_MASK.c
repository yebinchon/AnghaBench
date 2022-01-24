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
typedef  int /*<<< orphan*/  xfs_attr_leaf_entry_t ;
struct xfs_da_args {scalar_t__ index; int /*<<< orphan*/  trans; int /*<<< orphan*/  geo; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leafblock {int /*<<< orphan*/  hdr; } ;
struct xfs_attr3_icleaf_hdr {int count; int firstused; TYPE_1__* freemap; int /*<<< orphan*/  holes; } ;
struct TYPE_2__ {int size; int base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int XFS_ATTR_LEAF_MAPSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_attr_leafblock*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_da_args*) ; 
 int FUNC3 (struct xfs_buf*,struct xfs_attr3_icleaf_hdr*,struct xfs_da_args*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_da_args*,struct xfs_attr3_icleaf_hdr*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ; 
 int FUNC6 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct xfs_attr_leafblock*,struct xfs_attr3_icleaf_hdr*) ; 
 int FUNC8 (struct xfs_da_args*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ) ; 

int
FUNC10(
	struct xfs_buf		*bp,
	struct xfs_da_args	*args)
{
	struct xfs_attr_leafblock *leaf;
	struct xfs_attr3_icleaf_hdr ichdr;
	int			tablesize;
	int			entsize;
	int			sum;
	int			tmp;
	int			i;

	FUNC2(args);

	leaf = bp->b_addr;
	FUNC5(args->geo, &ichdr, leaf);
	FUNC0(args->index >= 0 && args->index <= ichdr.count);
	entsize = FUNC8(args, NULL);

	/*
	 * Search through freemap for first-fit on new name length.
	 * (may need to figure in size of entry struct too)
	 */
	tablesize = (ichdr.count + 1) * sizeof(xfs_attr_leaf_entry_t)
					+ FUNC6(leaf);
	for (sum = 0, i = XFS_ATTR_LEAF_MAPSIZE - 1; i >= 0; i--) {
		if (tablesize > ichdr.firstused) {
			sum += ichdr.freemap[i].size;
			continue;
		}
		if (!ichdr.freemap[i].size)
			continue;	/* no space in this map */
		tmp = entsize;
		if (ichdr.freemap[i].base < ichdr.firstused)
			tmp += sizeof(xfs_attr_leaf_entry_t);
		if (ichdr.freemap[i].size >= tmp) {
			tmp = FUNC3(bp, &ichdr, args, i);
			goto out_log_hdr;
		}
		sum += ichdr.freemap[i].size;
	}

	/*
	 * If there are no holes in the address space of the block,
	 * and we don't have enough freespace, then compaction will do us
	 * no good and we should just give up.
	 */
	if (!ichdr.holes && sum < entsize)
		return -ENOSPC;

	/*
	 * Compact the entries to coalesce free space.
	 * This may change the hdr->count via dropping INCOMPLETE entries.
	 */
	FUNC4(args, &ichdr, bp);

	/*
	 * After compaction, the block is guaranteed to have only one
	 * free region, in freemap[0].  If it is not big enough, give up.
	 */
	if (ichdr.freemap[0].size < (entsize + sizeof(xfs_attr_leaf_entry_t))) {
		tmp = -ENOSPC;
		goto out_log_hdr;
	}

	tmp = FUNC3(bp, &ichdr, args, 0);

out_log_hdr:
	FUNC7(args->geo, leaf, &ichdr);
	FUNC9(args->trans, bp,
		FUNC1(leaf, &leaf->hdr,
				FUNC6(leaf)));
	return tmp;
}