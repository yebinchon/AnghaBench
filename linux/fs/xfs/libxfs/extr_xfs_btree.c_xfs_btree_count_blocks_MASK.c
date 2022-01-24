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
typedef  scalar_t__ xfs_extlen_t ;
struct xfs_btree_cur {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  xfs_btree_count_blocks_helper ; 
 int FUNC0 (struct xfs_btree_cur*,int /*<<< orphan*/ ,scalar_t__*) ; 

int
FUNC1(
	struct xfs_btree_cur	*cur,
	xfs_extlen_t		*blocks)
{
	*blocks = 0;
	return FUNC0(cur, xfs_btree_count_blocks_helper,
			blocks);
}