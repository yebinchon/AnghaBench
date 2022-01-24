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
typedef  scalar_t__ xfs_agino_t ;
typedef  scalar_t__ xfs_agblock_t ;
struct xfs_btree_cur {int /*<<< orphan*/  bc_mp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct xfs_btree_cur*,scalar_t__,scalar_t__,int*) ; 

int
FUNC2(
	struct xfs_btree_cur	*cur,
	xfs_agblock_t		bno,
	xfs_extlen_t		len,
	bool			*exists)
{
	xfs_agino_t		low;
	xfs_agino_t		high;

	low = FUNC0(cur->bc_mp, bno);
	high = FUNC0(cur->bc_mp, bno + len) - 1;

	return FUNC1(cur, low, high, exists);
}