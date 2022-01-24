#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_inode_lock; } ;
struct nilfs_inode_info {struct buffer_head* i_bh; TYPE_2__* i_root; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifile; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct inode *inode, struct buffer_head **pbh)
{
	struct the_nilfs *nilfs = inode->i_sb->s_fs_info;
	struct nilfs_inode_info *ii = FUNC0(inode);
	int err;

	FUNC4(&nilfs->ns_inode_lock);
	if (ii->i_bh == NULL) {
		FUNC5(&nilfs->ns_inode_lock);
		err = FUNC3(ii->i_root->ifile,
						  inode->i_ino, pbh);
		if (FUNC6(err))
			return err;
		FUNC4(&nilfs->ns_inode_lock);
		if (ii->i_bh == NULL)
			ii->i_bh = *pbh;
		else {
			FUNC1(*pbh);
			*pbh = ii->i_bh;
		}
	} else
		*pbh = ii->i_bh;

	FUNC2(*pbh);
	FUNC5(&nilfs->ns_inode_lock);
	return 0;
}