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
typedef  union nilfs_binfo {int dummy; } nilfs_binfo ;
struct nilfs_btree_path {int dummy; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 int NILFS_BTREE_LEVEL_DATA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*,struct buffer_head*) ; 
 struct nilfs_btree_path* FUNC4 () ; 
 int FUNC5 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct buffer_head**,int /*<<< orphan*/ ,union nilfs_binfo*) ; 
 int FUNC6 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct buffer_head**,int /*<<< orphan*/ ,union nilfs_binfo*) ; 
 int FUNC7 (struct nilfs_bmap*,struct nilfs_btree_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_btree_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_btree_node*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nilfs_btree_node*) ; 

__attribute__((used)) static int FUNC11(struct nilfs_bmap *btree,
			      struct buffer_head **bh,
			      sector_t blocknr,
			      union nilfs_binfo *binfo)
{
	struct nilfs_btree_path *path;
	struct nilfs_btree_node *node;
	__u64 key;
	int level, ret;

	path = FUNC4();
	if (path == NULL)
		return -ENOMEM;

	if (FUNC2(*bh)) {
		node = (struct nilfs_btree_node *)(*bh)->b_data;
		key = FUNC9(node, 0);
		level = FUNC10(node);
	} else {
		key = FUNC3(btree, *bh);
		level = NILFS_BTREE_LEVEL_DATA;
	}

	ret = FUNC7(btree, path, key, NULL, level + 1, 0);
	if (ret < 0) {
		FUNC1(ret == -ENOENT);
		goto out;
	}

	ret = FUNC0(btree) ?
		FUNC6(btree, path, level, bh, blocknr, binfo) :
		FUNC5(btree, path, level, bh, blocknr, binfo);

 out:
	FUNC8(path);

	return ret;
}