#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int RENAME_EXCHANGE ; 
 unsigned int RENAME_NOREPLACE ; 
 unsigned int RENAME_WHITEOUT ; 
 int FUNC1 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ; 
 int FUNC4 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *old_dir, struct dentry *old_dentry,
			struct inode *new_dir, struct dentry *new_dentry,
			unsigned int flags)
{
	int err;

	if (FUNC5(FUNC2(FUNC0(old_dir->i_sb))))
		return -EIO;

	if (flags & ~(RENAME_NOREPLACE | RENAME_EXCHANGE | RENAME_WHITEOUT))
		return -EINVAL;

	err = FUNC4(old_dir, old_dentry, new_dir, new_dentry,
				     flags);
	if (err)
		return err;

	if (flags & RENAME_EXCHANGE) {
		return FUNC1(old_dir, old_dentry,
					 new_dir, new_dentry);
	}

	return FUNC3(old_dir, old_dentry, new_dir, new_dentry, flags);
}