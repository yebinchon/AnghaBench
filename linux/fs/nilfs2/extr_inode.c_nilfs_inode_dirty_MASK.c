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
struct the_nilfs {int /*<<< orphan*/  ns_inode_lock; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_dirty; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BUSY ; 
 int /*<<< orphan*/  NILFS_I_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct inode *inode)
{
	struct nilfs_inode_info *ii = FUNC0(inode);
	struct the_nilfs *nilfs = inode->i_sb->s_fs_info;
	int ret = 0;

	if (!FUNC1(&ii->i_dirty)) {
		FUNC2(&nilfs->ns_inode_lock);
		ret = FUNC4(NILFS_I_DIRTY, &ii->i_state) ||
			FUNC4(NILFS_I_BUSY, &ii->i_state);
		FUNC3(&nilfs->ns_inode_lock);
	}
	return ret;
}