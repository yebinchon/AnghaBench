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
typedef  int /*<<< orphan*/  umode_t ;
struct timespec64 {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct inode*) ; 
 int S_ATIME ; 
 int S_CTIME ; 
 int S_MTIME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct timespec64*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec64*,struct fat_slot_info*) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry, umode_t mode,
		       bool excl)
{
	struct super_block *sb = dir->i_sb;
	struct inode *inode;
	struct fat_slot_info sinfo;
	struct timespec64 ts;
	int err;

	FUNC9(&FUNC1(sb)->s_lock);

	ts = FUNC4(dir);
	err = FUNC11(dir, &dentry->d_name, 0, 0, &ts, &sinfo);
	if (err)
		goto out;
	FUNC8(dir);

	inode = FUNC6(sb, sinfo.de, sinfo.i_pos);
	FUNC3(sinfo.bh);
	if (FUNC0(inode)) {
		err = FUNC2(inode);
		goto out;
	}
	FUNC8(inode);
	FUNC7(inode, &ts, S_ATIME|S_CTIME|S_MTIME);
	/* timestamp is already written, so mark_inode_dirty() is unneeded. */

	FUNC5(dentry, inode);
out:
	FUNC10(&FUNC1(sb)->s_lock);
	return err;
}