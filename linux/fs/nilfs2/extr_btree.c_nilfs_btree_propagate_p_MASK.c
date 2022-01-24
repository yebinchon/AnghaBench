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
struct nilfs_btree_path {int /*<<< orphan*/  bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nilfs_bmap*) ; 

__attribute__((used)) static int FUNC3(struct nilfs_bmap *btree,
				   struct nilfs_btree_path *path,
				   int level,
				   struct buffer_head *bh)
{
	while ((++level < FUNC2(btree) - 1) &&
	       !FUNC0(path[level].bp_bh))
		FUNC1(path[level].bp_bh);

	return 0;
}