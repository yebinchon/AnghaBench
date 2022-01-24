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
struct nilfs_btree_path {int bp_index; int /*<<< orphan*/ * bp_sib_bh; int /*<<< orphan*/ * bp_bh; } ;
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
 int /*<<< orphan*/  FUNC9 (struct nilfs_btree_node*,struct nilfs_btree_node*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct nilfs_bmap *btree,
				    struct nilfs_btree_path *path,
				    int level, __u64 *keyp, __u64 *ptrp)
{
	struct nilfs_btree_node *node, *right;
	int nchildren, rnchildren, n, move, ncblk;

	node = FUNC4(path, level);
	right = FUNC5(path, level);
	nchildren = FUNC8(node);
	rnchildren = FUNC8(right);
	ncblk = FUNC6(btree);
	move = 0;

	n = (nchildren + rnchildren + 1) / 2 - rnchildren;
	if (n > nchildren - path[level].bp_index) {
		/* move insert point */
		n--;
		move = 1;
	}

	FUNC9(node, right, n, ncblk, ncblk);

	if (!FUNC1(path[level].bp_bh))
		FUNC2(path[level].bp_bh);
	if (!FUNC1(path[level].bp_sib_bh))
		FUNC2(path[level].bp_sib_bh);

	path[level + 1].bp_index++;
	FUNC10(btree, path, level + 1,
				FUNC7(right, 0));
	path[level + 1].bp_index--;

	if (move) {
		FUNC0(path[level].bp_bh);
		path[level].bp_bh = path[level].bp_sib_bh;
		path[level].bp_sib_bh = NULL;
		path[level].bp_index -= FUNC8(node);
		path[level + 1].bp_index++;
	} else {
		FUNC0(path[level].bp_sib_bh);
		path[level].bp_sib_bh = NULL;
	}

	FUNC3(btree, path, level, keyp, ptrp);
}