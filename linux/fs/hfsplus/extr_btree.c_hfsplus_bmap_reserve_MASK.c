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
typedef  int u32 ;
struct inode {int i_size; } ;
struct hfsplus_inode_info {int phys_size; int alloc_blocks; int fs_blocks; } ;
struct hfs_btree {int free_nodes; int node_size_shift; int node_count; int /*<<< orphan*/  sb; struct inode* inode; } ;
typedef  int loff_t ;
struct TYPE_2__ {int alloc_blksz_shift; int fs_shift; } ;

/* Variables and functions */
 struct hfsplus_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfs_btree*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 

int FUNC5(struct hfs_btree *tree, int rsvd_nodes)
{
	struct inode *inode = tree->inode;
	struct hfsplus_inode_info *hip = FUNC0(inode);
	u32 count;
	int res;

	if (rsvd_nodes <= 0)
		return 0;

	while (tree->free_nodes < rsvd_nodes) {
		res = FUNC3(inode, FUNC2(tree));
		if (res)
			return res;
		hip->phys_size = inode->i_size =
			(loff_t)hip->alloc_blocks <<
				FUNC1(tree->sb)->alloc_blksz_shift;
		hip->fs_blocks =
			hip->alloc_blocks << FUNC1(tree->sb)->fs_shift;
		FUNC4(inode, inode->i_size);
		count = inode->i_size >> tree->node_size_shift;
		tree->free_nodes += count - tree->node_count;
		tree->node_count = count;
	}
	return 0;
}