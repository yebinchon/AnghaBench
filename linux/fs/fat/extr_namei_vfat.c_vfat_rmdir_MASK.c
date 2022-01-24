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
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int S_ATIME ; 
 int S_MTIME ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ *,struct fat_slot_info*) ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = FUNC2(dentry);
	struct super_block *sb = dir->i_sb;
	struct fat_slot_info sinfo;
	int err;

	FUNC9(&FUNC0(sb)->s_lock);

	err = FUNC5(inode);
	if (err)
		goto out;
	err = FUNC12(dir, &dentry->d_name, &sinfo);
	if (err)
		goto out;

	err = FUNC6(dir, &sinfo);	/* and releases bh */
	if (err)
		goto out;
	FUNC3(dir);

	FUNC1(inode);
	FUNC7(inode, NULL, S_ATIME|S_MTIME);
	FUNC4(inode);
	FUNC11(dentry, FUNC8(dir));
out:
	FUNC10(&FUNC0(sb)->s_lock);

	return err;
}