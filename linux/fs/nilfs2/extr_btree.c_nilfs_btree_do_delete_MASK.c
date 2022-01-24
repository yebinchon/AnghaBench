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
struct nilfs_btree_path {int /*<<< orphan*/  bp_index; int /*<<< orphan*/  bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nilfs_btree_node* FUNC2 (struct nilfs_btree_path*,int) ; 
 struct nilfs_btree_node* FUNC3 (struct nilfs_bmap*) ; 
 int FUNC4 (struct nilfs_bmap*) ; 
 int FUNC5 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_btree_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct nilfs_bmap *btree,
				  struct nilfs_btree_path *path,
				  int level, __u64 *keyp, __u64 *ptrp)
{
	struct nilfs_btree_node *node;
	int ncblk;

	if (level < FUNC4(btree) - 1) {
		node = FUNC2(path, level);
		ncblk = FUNC5(btree);
		FUNC6(node, path[level].bp_index,
					keyp, ptrp, ncblk);
		if (!FUNC0(path[level].bp_bh))
			FUNC1(path[level].bp_bh);
		if (path[level].bp_index == 0)
			FUNC8(btree, path, level + 1,
				FUNC7(node, 0));
	} else {
		node = FUNC3(btree);
		FUNC6(node, path[level].bp_index,
					keyp, ptrp,
					NILFS_BTREE_ROOT_NCHILDREN_MAX);
	}
}