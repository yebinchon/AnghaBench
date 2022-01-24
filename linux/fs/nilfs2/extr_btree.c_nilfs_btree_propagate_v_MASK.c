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
struct nilfs_btree_path {struct buffer_head* bp_bh; int /*<<< orphan*/  bp_index; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct inode* FUNC3 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int,struct buffer_head*,struct inode*) ; 
 struct nilfs_btree_node* FUNC5 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_btree_node*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int*,struct inode*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nilfs_bmap *btree,
				   struct nilfs_btree_path *path,
				   int level, struct buffer_head *bh)
{
	int maxlevel = 0, ret;
	struct nilfs_btree_node *parent;
	struct inode *dat = FUNC3(btree);
	__u64 ptr;
	int ncmax;

	FUNC2(bh);
	path[level].bp_bh = bh;
	ret = FUNC7(btree, path, level, &maxlevel,
					      dat);
	if (ret < 0)
		goto out;

	if (FUNC1(path[level].bp_bh)) {
		parent = FUNC5(btree, path, level + 1, &ncmax);
		ptr = FUNC6(parent,
					       path[level + 1].bp_index,
					       ncmax);
		ret = FUNC8(dat, ptr);
		if (ret < 0)
			goto out;
	}

	FUNC4(btree, path, level, maxlevel, bh, dat);

 out:
	FUNC0(path[level].bp_bh);
	path[level].bp_bh = NULL;
	return ret;
}