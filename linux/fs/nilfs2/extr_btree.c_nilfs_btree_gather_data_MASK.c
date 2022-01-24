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
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int EINVAL ; 
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nilfs_bmap*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct nilfs_btree_node* FUNC4 (struct nilfs_bmap*) ; 
 int FUNC5 (struct nilfs_bmap*) ; 
 int FUNC6 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/ * FUNC7 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/ * FUNC8 (struct nilfs_btree_node*,int) ; 
 int FUNC9 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct nilfs_btree_node*,int,int) ; 

__attribute__((used)) static int FUNC11(struct nilfs_bmap *btree,
				   __u64 *keys, __u64 *ptrs, int nitems)
{
	struct buffer_head *bh;
	struct nilfs_btree_node *node, *root;
	__le64 *dkeys;
	__le64 *dptrs;
	__u64 ptr;
	int nchildren, ncmax, i, ret;

	root = FUNC4(btree);
	switch (FUNC5(btree)) {
	case 2:
		bh = NULL;
		node = root;
		ncmax = NILFS_BTREE_ROOT_NCHILDREN_MAX;
		break;
	case 3:
		nchildren = FUNC9(root);
		FUNC0(nchildren > 1);
		ptr = FUNC10(root, nchildren - 1,
					       NILFS_BTREE_ROOT_NCHILDREN_MAX);
		ret = FUNC3(btree, ptr, &bh);
		if (ret < 0)
			return ret;
		node = (struct nilfs_btree_node *)bh->b_data;
		ncmax = FUNC6(btree);
		break;
	default:
		node = NULL;
		return -EINVAL;
	}

	nchildren = FUNC9(node);
	if (nchildren < nitems)
		nitems = nchildren;
	dkeys = FUNC7(node);
	dptrs = FUNC8(node, ncmax);
	for (i = 0; i < nitems; i++) {
		keys[i] = FUNC2(dkeys[i]);
		ptrs[i] = FUNC2(dptrs[i]);
	}

	if (bh != NULL)
		FUNC1(bh);

	return nitems;
}