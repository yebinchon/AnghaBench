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
struct nilfs_btree_readahead_info {int ncmax; int index; int max_ra_blocks; struct nilfs_btree_node* node; } ;
struct nilfs_btree_path {int bp_index; int /*<<< orphan*/ * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct nilfs_bmap const*) ; 
 int NILFS_BTREE_LEVEL_NODE_MIN ; 
 int FUNC1 (struct nilfs_bmap const*,scalar_t__,int /*<<< orphan*/ **,struct nilfs_btree_readahead_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct nilfs_bmap const*) ; 
 struct nilfs_btree_path* FUNC4 () ; 
 int FUNC5 (struct nilfs_bmap const*,struct nilfs_btree_path*,scalar_t__,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_btree_path*) ; 
 void* FUNC7 (struct nilfs_bmap const*,struct nilfs_btree_path*,int,int*) ; 
 struct nilfs_btree_node* FUNC8 (struct nilfs_btree_path*,int) ; 
 int FUNC9 (struct nilfs_bmap const*) ; 
 int FUNC10 (struct nilfs_bmap const*) ; 
 scalar_t__ FUNC11 (struct nilfs_btree_node*,int) ; 
 int FUNC12 (struct nilfs_btree_node*) ; 
 scalar_t__ FUNC13 (struct nilfs_btree_node*,int,int) ; 
 int FUNC14 (struct inode*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC15(const struct nilfs_bmap *btree,
				     __u64 key, __u64 *ptrp,
				     unsigned int maxblocks)
{
	struct nilfs_btree_path *path;
	struct nilfs_btree_node *node;
	struct inode *dat = NULL;
	__u64 ptr, ptr2;
	sector_t blocknr;
	int level = NILFS_BTREE_LEVEL_NODE_MIN;
	int ret, cnt, index, maxlevel, ncmax;
	struct nilfs_btree_readahead_info p;

	path = FUNC4();
	if (path == NULL)
		return -ENOMEM;

	ret = FUNC5(btree, path, key, &ptr, level, 1);
	if (ret < 0)
		goto out;

	if (FUNC0(btree)) {
		dat = FUNC3(btree);
		ret = FUNC14(dat, ptr, &blocknr);
		if (ret < 0)
			goto out;
		ptr = blocknr;
	}
	cnt = 1;
	if (cnt == maxblocks)
		goto end;

	maxlevel = FUNC9(btree) - 1;
	node = FUNC7(btree, path, level, &ncmax);
	index = path[level].bp_index + 1;
	for (;;) {
		while (index < FUNC12(node)) {
			if (FUNC11(node, index) !=
			    key + cnt)
				goto end;
			ptr2 = FUNC13(node, index, ncmax);
			if (dat) {
				ret = FUNC14(dat, ptr2, &blocknr);
				if (ret < 0)
					goto out;
				ptr2 = blocknr;
			}
			if (ptr2 != ptr + cnt || ++cnt == maxblocks)
				goto end;
			index++;
			continue;
		}
		if (level == maxlevel)
			break;

		/* look-up right sibling node */
		p.node = FUNC7(btree, path, level + 1, &p.ncmax);
		p.index = path[level + 1].bp_index + 1;
		p.max_ra_blocks = 7;
		if (p.index >= FUNC12(p.node) ||
		    FUNC11(p.node, p.index) != key + cnt)
			break;
		ptr2 = FUNC13(p.node, p.index, p.ncmax);
		path[level + 1].bp_index = p.index;

		FUNC2(path[level].bp_bh);
		path[level].bp_bh = NULL;

		ret = FUNC1(btree, ptr2, &path[level].bp_bh,
					      &p);
		if (ret < 0)
			goto out;
		node = FUNC8(path, level);
		ncmax = FUNC10(btree);
		index = 0;
		path[level].bp_index = index;
	}
 end:
	*ptrp = ptr;
	ret = cnt;
 out:
	FUNC6(path);
	return ret;
}