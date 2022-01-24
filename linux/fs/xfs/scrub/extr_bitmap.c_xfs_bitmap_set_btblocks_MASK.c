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
struct xfs_btree_cur {int dummy; } ;
struct xfs_bitmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  xfs_bitmap_collect_btblock ; 
 int FUNC0 (struct xfs_btree_cur*,int /*<<< orphan*/ ,struct xfs_bitmap*) ; 

int
FUNC1(
	struct xfs_bitmap	*bitmap,
	struct xfs_btree_cur	*cur)
{
	return FUNC0(cur, xfs_bitmap_collect_btblock, bitmap);
}