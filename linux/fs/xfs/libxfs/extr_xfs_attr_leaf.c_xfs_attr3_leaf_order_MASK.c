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
struct xfs_buf {int /*<<< orphan*/  b_addr; } ;
struct xfs_attr_leaf_entry {int /*<<< orphan*/  hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct xfs_attr_leaf_entry* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(
	struct xfs_buf	*leaf1_bp,
	struct xfs_attr3_icleaf_hdr *leaf1hdr,
	struct xfs_buf	*leaf2_bp,
	struct xfs_attr3_icleaf_hdr *leaf2hdr)
{
	struct xfs_attr_leaf_entry *entries1;
	struct xfs_attr_leaf_entry *entries2;

	entries1 = FUNC1(leaf1_bp->b_addr);
	entries2 = FUNC1(leaf2_bp->b_addr);
	if (leaf1hdr->count > 0 && leaf2hdr->count > 0 &&
	    ((FUNC0(entries2[0].hashval) <
	      FUNC0(entries1[0].hashval)) ||
	     (FUNC0(entries2[leaf2hdr->count - 1].hashval) <
	      FUNC0(entries1[leaf1hdr->count - 1].hashval)))) {
		return 1;
	}
	return 0;
}