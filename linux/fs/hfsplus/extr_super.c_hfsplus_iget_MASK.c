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
struct super_block {int dummy; } ;
struct inode {int i_state; scalar_t__ i_ino; int /*<<< orphan*/  i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  opencnt; int /*<<< orphan*/ * rsrc_inode; scalar_t__ extent_state; scalar_t__ flags; int /*<<< orphan*/  extents_lock; int /*<<< orphan*/  open_dir_lock; int /*<<< orphan*/  open_dir_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  cat_tree; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 scalar_t__ HFSPLUS_FIRSTUSER_CNID ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ HFSPLUS_ROOT_CNID ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int I_NEW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int FUNC7 (struct inode*,struct hfs_find_data*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,struct hfs_find_data*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct inode* FUNC11 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 

struct inode *FUNC15(struct super_block *sb, unsigned long ino)
{
	struct hfs_find_data fd;
	struct inode *inode;
	int err;

	inode = FUNC11(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	FUNC3(&FUNC1(inode)->open_dir_list);
	FUNC13(&FUNC1(inode)->open_dir_lock);
	FUNC12(&FUNC1(inode)->extents_lock);
	FUNC1(inode)->flags = 0;
	FUNC1(inode)->extent_state = 0;
	FUNC1(inode)->rsrc_inode = NULL;
	FUNC4(&FUNC1(inode)->opencnt, 0);

	if (inode->i_ino >= HFSPLUS_FIRSTUSER_CNID ||
	    inode->i_ino == HFSPLUS_ROOT_CNID) {
		err = FUNC6(FUNC2(inode->i_sb)->cat_tree, &fd);
		if (!err) {
			err = FUNC8(inode->i_sb, inode->i_ino, &fd);
			if (!err)
				err = FUNC7(inode, &fd);
			FUNC5(&fd);
		}
	} else {
		err = FUNC9(inode);
	}

	if (err) {
		FUNC10(inode);
		return FUNC0(err);
	}

	FUNC14(inode);
	return inode;
}