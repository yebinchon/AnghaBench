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
struct ubifs_info {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int RENAME_EXCHANGE ; 
 unsigned int RENAME_NOREPLACE ; 
 unsigned int RENAME_WHITEOUT ; 
 int FUNC0 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ; 
 int FUNC1 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC5(struct inode *old_dir, struct dentry *old_dentry,
			struct inode *new_dir, struct dentry *new_dentry,
			unsigned int flags)
{
	int err;
	struct ubifs_info *c = old_dir->i_sb->s_fs_info;

	if (flags & ~(RENAME_NOREPLACE | RENAME_WHITEOUT | RENAME_EXCHANGE))
		return -EINVAL;

	FUNC3(c, FUNC2(old_dir));
	FUNC3(c, FUNC2(new_dir));

	err = FUNC1(old_dir, old_dentry, new_dir, new_dentry,
				     flags);
	if (err)
		return err;

	if (flags & RENAME_EXCHANGE)
		return FUNC4(old_dir, old_dentry, new_dir, new_dentry);

	return FUNC0(old_dir, old_dentry, new_dir, new_dentry, flags);
}