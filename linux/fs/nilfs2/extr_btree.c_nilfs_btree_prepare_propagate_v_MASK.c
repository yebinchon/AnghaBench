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
struct nilfs_btree_path {int /*<<< orphan*/  bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ; 
 int FUNC4 (struct nilfs_bmap*) ; 
 int FUNC5 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ; 

__attribute__((used)) static int FUNC6(struct nilfs_bmap *btree,
					   struct nilfs_btree_path *path,
					   int minlevel, int *maxlevelp,
					   struct inode *dat)
{
	int level, ret;

	level = minlevel;
	if (!FUNC2(path[level].bp_bh)) {
		ret = FUNC5(btree, path, level, dat);
		if (ret < 0)
			return ret;
	}
	while ((++level < FUNC4(btree) - 1) &&
	       !FUNC1(path[level].bp_bh)) {

		FUNC0(FUNC2(path[level].bp_bh));
		ret = FUNC5(btree, path, level, dat);
		if (ret < 0)
			goto out;
	}

	/* success */
	*maxlevelp = level - 1;
	return 0;

	/* error */
 out:
	while (--level > minlevel)
		FUNC3(btree, path, level, dat);
	if (!FUNC2(path[level].bp_bh))
		FUNC3(btree, path, level, dat);
	return ret;
}