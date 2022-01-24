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
typedef  int /*<<< orphan*/  xfs_dahash_t ;
struct xfs_mount {int /*<<< orphan*/  m_attr_geo; } ;
struct xfs_buf {int /*<<< orphan*/  b_addr; struct xfs_mount* b_mount; } ;
struct xfs_attr_leaf_entry {int /*<<< orphan*/  hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xfs_attr_leaf_entry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xfs_attr3_icleaf_hdr*,int /*<<< orphan*/ ) ; 

xfs_dahash_t
FUNC3(
	struct xfs_buf	*bp,
	int		*count)
{
	struct xfs_attr3_icleaf_hdr ichdr;
	struct xfs_attr_leaf_entry *entries;
	struct xfs_mount *mp = bp->b_mount;

	FUNC2(mp->m_attr_geo, &ichdr, bp->b_addr);
	entries = FUNC1(bp->b_addr);
	if (count)
		*count = ichdr.count;
	if (!ichdr.count)
		return 0;
	return FUNC0(entries[ichdr.count - 1].hashval);
}