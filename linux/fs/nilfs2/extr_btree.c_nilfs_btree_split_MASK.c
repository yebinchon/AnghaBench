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
struct nilfs_btree_path {int bp_index; int /*<<< orphan*/ * bp_sib_bh; TYPE_1__ bp_newreq; int /*<<< orphan*/ * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nilfs_btree_node* FUNC4 (struct nilfs_btree_path*,int) ; 
 struct nilfs_btree_node* FUNC5 (struct nilfs_btree_path*,int) ; 
 int FUNC6 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_btree_node*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_btree_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nilfs_btree_node*,struct nilfs_btree_node*,int,int,int) ; 

__attribute__((used)) static void FUNC11(struct nilfs_bmap *btree,
			      struct nilfs_btree_path *path,
			      int level, __u64 *keyp, __u64 *ptrp)
{
	struct nilfs_btree_node *node, *right;
	int nchildren, n, move, ncblk;

	node = FUNC4(path, level);
	right = FUNC5(path, level);
	nchildren = FUNC8(node);
	ncblk = FUNC6(btree);
	move = 0;

	n = (nchildren + 1) / 2;
	if (n > nchildren - path[level].bp_index) {
		n--;
		move = 1;
	}

	FUNC10(node, right, n, ncblk, ncblk);

	if (!FUNC1(path[level].bp_bh))
		FUNC2(path[level].bp_bh);
	if (!FUNC1(path[level].bp_sib_bh))
		FUNC2(path[level].bp_sib_bh);

	if (move) {
		path[level].bp_index -= FUNC8(node);
		FUNC9(right, path[level].bp_index,
					*keyp, *ptrp, ncblk);

		*keyp = FUNC7(right, 0);
		*ptrp = path[level].bp_newreq.bpr_ptr;

		FUNC0(path[level].bp_bh);
		path[level].bp_bh = path[level].bp_sib_bh;
		path[level].bp_sib_bh = NULL;
	} else {
		FUNC3(btree, path, level, keyp, ptrp);

		*keyp = FUNC7(right, 0);
		*ptrp = path[level].bp_newreq.bpr_ptr;

		FUNC0(path[level].bp_sib_bh);
		path[level].bp_sib_bh = NULL;
	}

	path[level + 1].bp_index++;
}