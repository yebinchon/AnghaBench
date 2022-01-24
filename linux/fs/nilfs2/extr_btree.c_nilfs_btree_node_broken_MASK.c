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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_CRIT ; 
 int NILFS_BTREE_LEVEL_MAX ; 
 int NILFS_BTREE_LEVEL_NODE_MIN ; 
 int FUNC0 (size_t) ; 
 int NILFS_BTREE_NODE_ROOT ; 
 int FUNC1 (struct nilfs_btree_node const*) ; 
 int FUNC2 (struct nilfs_btree_node const*) ; 
 int FUNC3 (struct nilfs_btree_node const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long,int,int,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(const struct nilfs_btree_node *node,
				   size_t size, struct inode *inode,
				   sector_t blocknr)
{
	int level, flags, nchildren;
	int ret = 0;

	level = FUNC2(node);
	flags = FUNC1(node);
	nchildren = FUNC3(node);

	if (FUNC5(level < NILFS_BTREE_LEVEL_NODE_MIN ||
		     level >= NILFS_BTREE_LEVEL_MAX ||
		     (flags & NILFS_BTREE_NODE_ROOT) ||
		     nchildren < 0 ||
		     nchildren > FUNC0(size))) {
		FUNC4(inode->i_sb, KERN_CRIT,
			  "bad btree node (ino=%lu, blocknr=%llu): level = %d, flags = 0x%x, nchildren = %d",
			  inode->i_ino, (unsigned long long)blocknr, level,
			  flags, nchildren);
		ret = 1;
	}
	return ret;
}