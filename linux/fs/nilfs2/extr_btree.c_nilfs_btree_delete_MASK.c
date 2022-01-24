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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  NILFS_BTREE_LEVEL_NODE_MIN ; 
 struct inode* FUNC1 (struct nilfs_bmap*) ; 
 struct nilfs_btree_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ; 
 int FUNC4 (struct nilfs_bmap*,struct nilfs_btree_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_btree_path*) ; 
 int FUNC6 (struct nilfs_bmap*,struct nilfs_btree_path*,int*,struct nilfs_bmap_stats*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nilfs_bmap *btree, __u64 key)

{
	struct nilfs_btree_path *path;
	struct nilfs_bmap_stats stats;
	struct inode *dat;
	int level, ret;

	path = FUNC2();
	if (path == NULL)
		return -ENOMEM;

	ret = FUNC4(btree, path, key, NULL,
				    NILFS_BTREE_LEVEL_NODE_MIN, 0);
	if (ret < 0)
		goto out;


	dat = FUNC0(btree) ? FUNC1(btree) : NULL;

	ret = FUNC6(btree, path, &level, &stats, dat);
	if (ret < 0)
		goto out;
	FUNC3(btree, path, level, dat);
	FUNC7(btree->b_inode, stats.bs_nblocks);

out:
	FUNC5(path);
	return ret;
}