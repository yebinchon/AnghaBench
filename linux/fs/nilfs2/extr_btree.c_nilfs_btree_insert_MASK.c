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
struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap_stats {int /*<<< orphan*/  bs_nblocks; } ;
struct nilfs_bmap {int /*<<< orphan*/  b_inode; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NILFS_BTREE_LEVEL_NODE_MIN ; 
 struct nilfs_btree_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nilfs_bmap*,struct nilfs_btree_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_btree_path*) ; 
 int FUNC4 (struct nilfs_bmap*,struct nilfs_btree_path*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nilfs_bmap_stats*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nilfs_bmap *btree, __u64 key, __u64 ptr)
{
	struct nilfs_btree_path *path;
	struct nilfs_bmap_stats stats;
	int level, ret;

	path = FUNC0();
	if (path == NULL)
		return -ENOMEM;

	ret = FUNC2(btree, path, key, NULL,
				    NILFS_BTREE_LEVEL_NODE_MIN, 0);
	if (ret != -ENOENT) {
		if (ret == 0)
			ret = -EEXIST;
		goto out;
	}

	ret = FUNC4(btree, path, &level, key, ptr, &stats);
	if (ret < 0)
		goto out;
	FUNC1(btree, path, level, key, ptr);
	FUNC5(btree->b_inode, stats.bs_nblocks);

 out:
	FUNC3(path);
	return ret;
}