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
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int RENAME_NOREPLACE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (struct dentry*) ; 
 int FUNC5 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC6(struct inode *old_dir, struct dentry *old_dentry,
		       struct inode *new_dir, struct dentry *new_dentry,
		       unsigned int flags)
{
	struct inode *new_inode = FUNC1(new_dentry);
	struct inode *old_inode = FUNC1(old_dentry);
	int err;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	if (new_inode) {
		/* overwriting existing file/dir */
		err = FUNC5(new_dir, new_dentry);
		if (err)
			goto out;
	}

	/* since omfs locates files by name, we need to unlink _before_
	 * adding the new link or we won't find the old one */
	err = FUNC4(old_dentry);
	if (err)
		goto out;

	FUNC2(old_dir);
	err = FUNC3(new_dentry, old_inode);
	if (err)
		goto out;

	old_inode->i_ctime = FUNC0(old_inode);
	FUNC2(old_inode);
out:
	return err;
}