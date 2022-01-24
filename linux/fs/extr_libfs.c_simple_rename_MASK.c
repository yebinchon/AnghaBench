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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTEMPTY ; 
 unsigned int RENAME_NOREPLACE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct dentry*) ; 

int FUNC8(struct inode *old_dir, struct dentry *old_dentry,
		  struct inode *new_dir, struct dentry *new_dentry,
		  unsigned int flags)
{
	struct inode *inode = FUNC1(old_dentry);
	int they_are_dirs = FUNC2(old_dentry);

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	if (!FUNC6(new_dentry))
		return -ENOTEMPTY;

	if (FUNC3(new_dentry)) {
		FUNC7(new_dir, new_dentry);
		if (they_are_dirs) {
			FUNC4(FUNC1(new_dentry));
			FUNC4(old_dir);
		}
	} else if (they_are_dirs) {
		FUNC4(old_dir);
		FUNC5(new_dir);
	}

	old_dir->i_ctime = old_dir->i_mtime = new_dir->i_ctime =
		new_dir->i_mtime = inode->i_ctime = FUNC0(old_dir);

	return 0;
}