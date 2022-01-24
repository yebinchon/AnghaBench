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
struct TYPE_2__ {int /*<<< orphan*/  bpr_ptr; } ;
struct nilfs_btree_path {TYPE_1__ bp_newreq; int /*<<< orphan*/ * bp_sib_bh; int /*<<< orphan*/ * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nilfs_btree_node* FUNC3 (struct nilfs_bmap*) ; 
 struct nilfs_btree_node* FUNC4 (struct nilfs_btree_path*,int) ; 
 int FUNC5 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_btree_node*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_btree_node*,struct nilfs_btree_node*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_btree_node*,int) ; 

__attribute__((used)) static void FUNC10(struct nilfs_bmap *btree,
			     struct nilfs_btree_path *path,
			     int level, __u64 *keyp, __u64 *ptrp)
{
	struct nilfs_btree_node *root, *child;
	int n, ncblk;

	root = FUNC3(btree);
	child = FUNC4(path, level);
	ncblk = FUNC5(btree);

	n = FUNC7(root);

	FUNC8(root, child, n,
				    NILFS_BTREE_ROOT_NCHILDREN_MAX, ncblk);
	FUNC9(root, level + 1);

	if (!FUNC0(path[level].bp_sib_bh))
		FUNC1(path[level].bp_sib_bh);

	path[level].bp_bh = path[level].bp_sib_bh;
	path[level].bp_sib_bh = NULL;

	FUNC2(btree, path, level, keyp, ptrp);

	*keyp = FUNC6(child, 0);
	*ptrp = path[level].bp_newreq.bpr_ptr;
}