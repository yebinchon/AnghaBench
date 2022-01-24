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
struct nilfs_btree_path {int bp_index; int /*<<< orphan*/ * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 scalar_t__ FUNC0 (struct nilfs_bmap const*,struct nilfs_btree_node*,int) ; 
 int FUNC1 (struct nilfs_bmap const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 struct nilfs_btree_node* FUNC2 (struct nilfs_btree_path*,int) ; 
 struct nilfs_btree_node* FUNC3 (struct nilfs_bmap const*) ; 
 int FUNC4 (struct nilfs_bmap const*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_btree_node*,int) ; 
 int FUNC6 (struct nilfs_btree_node*) ; 
 int FUNC7 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_btree_node*,int,int) ; 

__attribute__((used)) static int FUNC9(const struct nilfs_bmap *btree,
				      struct nilfs_btree_path *path,
				      __u64 *keyp, __u64 *ptrp)
{
	struct nilfs_btree_node *node;
	__u64 ptr;
	int index, level, ncmax, ret;

	node = FUNC3(btree);
	index = FUNC7(node) - 1;
	if (index < 0)
		return -ENOENT;
	level = FUNC6(node);
	ptr = FUNC8(node, index,
				       NILFS_BTREE_ROOT_NCHILDREN_MAX);
	path[level].bp_bh = NULL;
	path[level].bp_index = index;
	ncmax = FUNC4(btree);

	for (level--; level > 0; level--) {
		ret = FUNC1(btree, ptr, &path[level].bp_bh);
		if (ret < 0)
			return ret;
		node = FUNC2(path, level);
		if (FUNC0(btree, node, level))
			return -EINVAL;
		index = FUNC7(node) - 1;
		ptr = FUNC8(node, index, ncmax);
		path[level].bp_index = index;
	}

	if (keyp != NULL)
		*keyp = FUNC5(node, index);
	if (ptrp != NULL)
		*ptrp = ptr;

	return 0;
}