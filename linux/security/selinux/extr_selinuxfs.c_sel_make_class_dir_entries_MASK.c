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
struct super_block {struct selinux_fs_info* s_fs_info; } ;
struct selinux_fs_info {int /*<<< orphan*/  last_class_ino; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_fop; } ;
struct dentry {struct super_block* d_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC3 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  sel_class_ops ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct dentry* FUNC6 (struct dentry*,char*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC7 (struct super_block*,int) ; 
 int FUNC8 (char*,int,struct dentry*) ; 

__attribute__((used)) static int FUNC9(char *classname, int index,
					struct dentry *dir)
{
	struct super_block *sb = dir->d_sb;
	struct selinux_fs_info *fsi = sb->s_fs_info;
	struct dentry *dentry = NULL;
	struct inode *inode = NULL;
	int rc;

	dentry = FUNC3(dir, "index");
	if (!dentry)
		return -ENOMEM;

	inode = FUNC7(dir->d_sb, S_IFREG|S_IRUGO);
	if (!inode) {
		FUNC4(dentry);
		return -ENOMEM;
	}

	inode->i_fop = &sel_class_ops;
	inode->i_ino = FUNC5(index);
	FUNC2(dentry, inode);

	dentry = FUNC6(dir, "perms", &fsi->last_class_ino);
	if (FUNC0(dentry))
		return FUNC1(dentry);

	rc = FUNC8(classname, index, dentry);

	return rc;
}