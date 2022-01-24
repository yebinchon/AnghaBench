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
typedef  int /*<<< orphan*/  umode_t ;
struct inode_operations {int dummy; } ;
struct inode {char* i_link; struct file_operations const* i_fop; struct inode_operations const* i_op; void* i_private; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ) ; 
 struct inode_operations const simple_dir_inode_operations ; 
 struct file_operations const simple_dir_operations ; 
 struct inode_operations const simple_symlink_inode_operations ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry,
			       umode_t mode, void *data, char *link,
			       const struct file_operations *fops,
			       const struct inode_operations *iops)
{
	struct inode *inode = FUNC8(dir->i_sb);

	FUNC0(!dir);
	FUNC0(!dentry);

	if (!inode)
		return -ENOMEM;

	inode->i_ino = FUNC6();
	inode->i_mode = mode;
	inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC3(inode);
	inode->i_private = data;
	if (FUNC1(mode)) {
		inode->i_op = iops ? iops : &simple_dir_inode_operations;
		inode->i_fop = &simple_dir_operations;
		FUNC7(inode);
		FUNC7(dir);
	} else if (FUNC2(mode)) {
		inode->i_op = iops ? iops : &simple_symlink_inode_operations;
		inode->i_link = link;
	} else {
		inode->i_fop = fops;
	}
	FUNC4(dentry, inode);
	FUNC5(dentry);

	return 0;
}