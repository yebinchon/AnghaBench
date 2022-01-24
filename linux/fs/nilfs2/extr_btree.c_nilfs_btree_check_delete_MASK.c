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
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 scalar_t__ NILFS_BMAP_LARGE_LOW ; 
 int /*<<< orphan*/  NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct nilfs_bmap*,scalar_t__,struct buffer_head**) ; 
 struct nilfs_btree_node* FUNC2 (struct nilfs_bmap*) ; 
 int FUNC3 (struct nilfs_bmap*) ; 
 scalar_t__ FUNC4 (struct nilfs_btree_node*,int) ; 
 int FUNC5 (struct nilfs_btree_node*) ; 
 scalar_t__ FUNC6 (struct nilfs_btree_node*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nilfs_bmap *btree, __u64 key)
{
	struct buffer_head *bh;
	struct nilfs_btree_node *root, *node;
	__u64 maxkey, nextmaxkey;
	__u64 ptr;
	int nchildren, ret;

	root = FUNC2(btree);
	switch (FUNC3(btree)) {
	case 2:
		bh = NULL;
		node = root;
		break;
	case 3:
		nchildren = FUNC5(root);
		if (nchildren > 1)
			return 0;
		ptr = FUNC6(root, nchildren - 1,
					       NILFS_BTREE_ROOT_NCHILDREN_MAX);
		ret = FUNC1(btree, ptr, &bh);
		if (ret < 0)
			return ret;
		node = (struct nilfs_btree_node *)bh->b_data;
		break;
	default:
		return 0;
	}

	nchildren = FUNC5(node);
	maxkey = FUNC4(node, nchildren - 1);
	nextmaxkey = (nchildren > 1) ?
		FUNC4(node, nchildren - 2) : 0;
	if (bh != NULL)
		FUNC0(bh);

	return (maxkey == key) && (nextmaxkey < NILFS_BMAP_LARGE_LOW);
}