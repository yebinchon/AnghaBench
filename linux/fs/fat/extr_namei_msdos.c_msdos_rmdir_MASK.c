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
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  S_CTIME ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int FUNC6 (struct super_block*,struct inode*,struct inode*) ; 
 int FUNC7 (struct inode*,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry)
{
	struct super_block *sb = dir->i_sb;
	struct inode *inode = FUNC2(dentry);
	struct fat_slot_info sinfo;
	int err;

	FUNC10(&FUNC0(sb)->s_lock);
	err = FUNC5(inode);
	if (err)
		goto out;
	err = FUNC9(dir, dentry->d_name.name, dentry->d_name.len, &sinfo);
	if (err)
		goto out;

	err = FUNC7(dir, &sinfo);	/* and releases bh */
	if (err)
		goto out;
	FUNC3(dir);

	FUNC1(inode);
	FUNC8(inode, NULL, S_CTIME);
	FUNC4(inode);
out:
	FUNC11(&FUNC0(sb)->s_lock);
	if (!err)
		err = FUNC6(sb, dir, inode);

	return err;
}