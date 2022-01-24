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
typedef  scalar_t__ u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hfsplus_inode_info {scalar_t__ cached_start; scalar_t__ cached_blocks; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ext_tree; } ;

/* Variables and functions */
 struct hfsplus_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfs_find_data*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_find_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, u32 block)
{
	struct hfsplus_inode_info *hip = FUNC0(inode);
	struct hfs_find_data fd;
	int res;

	if (block >= hip->cached_start &&
	    block < hip->cached_start + hip->cached_blocks)
		return 0;

	res = FUNC4(FUNC1(inode->i_sb)->ext_tree, &fd);
	if (!res) {
		res = FUNC2(&fd, inode, block);
		FUNC3(&fd);
	}
	return res;
}