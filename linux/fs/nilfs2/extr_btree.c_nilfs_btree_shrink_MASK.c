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
struct nilfs_btree_path {int /*<<< orphan*/ * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nilfs_btree_node* FUNC2 (struct nilfs_btree_path*,int) ; 
 struct nilfs_btree_node* FUNC3 (struct nilfs_bmap*) ; 
 int FUNC4 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_btree_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_btree_node*,struct nilfs_btree_node*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_btree_node*,int) ; 

__attribute__((used)) static void FUNC9(struct nilfs_bmap *btree,
			       struct nilfs_btree_path *path,
			       int level, __u64 *keyp, __u64 *ptrp)
{
	struct nilfs_btree_node *root, *child;
	int n, ncblk;

	FUNC1(btree, path, level, keyp, ptrp);

	root = FUNC3(btree);
	child = FUNC2(path, level);
	ncblk = FUNC4(btree);

	FUNC5(root, 0, NULL, NULL,
				NILFS_BTREE_ROOT_NCHILDREN_MAX);
	FUNC8(root, level);
	n = FUNC6(child);
	FUNC7(root, child, n,
				   NILFS_BTREE_ROOT_NCHILDREN_MAX, ncblk);

	FUNC0(path[level].bp_bh);
	path[level].bp_bh = NULL;
}