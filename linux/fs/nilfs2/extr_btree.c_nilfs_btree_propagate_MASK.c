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
struct nilfs_btree_path {int dummy; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 int NILFS_BTREE_LEVEL_DATA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct nilfs_bmap*,struct buffer_head*) ; 
 struct nilfs_btree_path* FUNC5 () ; 
 int FUNC6 (struct nilfs_bmap*,struct nilfs_btree_path*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_btree_path*) ; 
 scalar_t__ FUNC8 (struct nilfs_btree_node*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nilfs_btree_node*) ; 
 int FUNC10 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct buffer_head*) ; 
 int FUNC11 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long,int) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct nilfs_bmap *btree,
				 struct buffer_head *bh)
{
	struct nilfs_btree_path *path;
	struct nilfs_btree_node *node;
	__u64 key;
	int level, ret;

	FUNC1(!FUNC2(bh));

	path = FUNC5();
	if (path == NULL)
		return -ENOMEM;

	if (FUNC3(bh)) {
		node = (struct nilfs_btree_node *)bh->b_data;
		key = FUNC8(node, 0);
		level = FUNC9(node);
	} else {
		key = FUNC4(btree, bh);
		level = NILFS_BTREE_LEVEL_DATA;
	}

	ret = FUNC6(btree, path, key, NULL, level + 1, 0);
	if (ret < 0) {
		if (FUNC13(ret == -ENOENT))
			FUNC12(btree->b_inode->i_sb, KERN_CRIT,
				  "writing node/leaf block does not appear in b-tree (ino=%lu) at key=%llu, level=%d",
				  btree->b_inode->i_ino,
				  (unsigned long long)key, level);
		goto out;
	}

	ret = FUNC0(btree) ?
		FUNC11(btree, path, level, bh) :
		FUNC10(btree, path, level, bh);

 out:
	FUNC7(path);

	return ret;
}