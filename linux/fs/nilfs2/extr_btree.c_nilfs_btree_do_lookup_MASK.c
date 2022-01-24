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
struct nilfs_btree_readahead_info {int index; int max_ra_blocks; int /*<<< orphan*/  ncmax; int /*<<< orphan*/  node; } ;
struct nilfs_btree_path {int bp_index; int /*<<< orphan*/ * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  NILFS_BMAP_INVALID_PTR ; 
 int NILFS_BTREE_LEVEL_NODE_MIN ; 
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nilfs_bmap const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,struct nilfs_btree_readahead_info*) ; 
 scalar_t__ FUNC2 (struct nilfs_bmap const*,struct nilfs_btree_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap const*,struct nilfs_btree_path*,int,int /*<<< orphan*/ *) ; 
 struct nilfs_btree_node* FUNC4 (struct nilfs_btree_path*,int) ; 
 struct nilfs_btree_node* FUNC5 (struct nilfs_bmap const*) ; 
 int FUNC6 (struct nilfs_bmap const*) ; 
 int FUNC7 (struct nilfs_btree_node*) ; 
 scalar_t__ FUNC8 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_btree_node*,int,int) ; 
 int FUNC10 (struct nilfs_btree_node*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC11(const struct nilfs_bmap *btree,
				 struct nilfs_btree_path *path,
				 __u64 key, __u64 *ptrp, int minlevel,
				 int readahead)
{
	struct nilfs_btree_node *node;
	struct nilfs_btree_readahead_info p, *ra;
	__u64 ptr;
	int level, index, found, ncmax, ret;

	node = FUNC5(btree);
	level = FUNC7(node);
	if (level < minlevel || FUNC8(node) <= 0)
		return -ENOENT;

	found = FUNC10(node, key, &index);
	ptr = FUNC9(node, index,
				       NILFS_BTREE_ROOT_NCHILDREN_MAX);
	path[level].bp_bh = NULL;
	path[level].bp_index = index;

	ncmax = FUNC6(btree);

	while (--level >= minlevel) {
		ra = NULL;
		if (level == NILFS_BTREE_LEVEL_NODE_MIN && readahead) {
			p.node = FUNC3(btree, path, level + 1,
						      &p.ncmax);
			p.index = index;
			p.max_ra_blocks = 7;
			ra = &p;
		}
		ret = FUNC1(btree, ptr, &path[level].bp_bh,
					      ra);
		if (ret < 0)
			return ret;

		node = FUNC4(path, level);
		if (FUNC2(btree, node, level))
			return -EINVAL;
		if (!found)
			found = FUNC10(node, key, &index);
		else
			index = 0;
		if (index < ncmax) {
			ptr = FUNC9(node, index, ncmax);
		} else {
			FUNC0(found || level != NILFS_BTREE_LEVEL_NODE_MIN);
			/* insert */
			ptr = NILFS_BMAP_INVALID_PTR;
		}
		path[level].bp_index = index;
	}
	if (!found)
		return -ENOENT;

	if (ptrp != NULL)
		*ptrp = ptr;

	return 0;
}