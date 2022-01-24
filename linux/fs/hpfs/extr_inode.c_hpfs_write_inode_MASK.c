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
struct inode {scalar_t__ i_ino; int i_state; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_count; } ;
struct hpfs_inode_info {scalar_t__ i_dirty; int /*<<< orphan*/  i_parent_dir; scalar_t__* i_rddir_off; } ;
struct TYPE_2__ {scalar_t__ sb_root; } ;

/* Variables and functions */
 int I_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hpfs_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

void FUNC11(struct inode *i)
{
	struct hpfs_inode_info *hpfs_inode = FUNC1(i);
	struct inode *parent;
	if (i->i_ino == FUNC4(i->i_sb)->sb_root) return;
	if (hpfs_inode->i_rddir_off && !FUNC0(&i->i_count)) {
		if (*hpfs_inode->i_rddir_off)
			FUNC9("write_inode: some position still there\n");
		FUNC8(hpfs_inode->i_rddir_off);
		hpfs_inode->i_rddir_off = NULL;
	}
	if (!i->i_nlink) {
		return;
	}
	parent = FUNC6(i->i_sb, hpfs_inode->i_parent_dir);
	if (parent) {
		hpfs_inode->i_dirty = 0;
		if (parent->i_state & I_NEW) {
			FUNC2(parent);
			FUNC3(parent);
			FUNC10(parent);
		}
		FUNC5(i);
		FUNC7(parent);
	}
}