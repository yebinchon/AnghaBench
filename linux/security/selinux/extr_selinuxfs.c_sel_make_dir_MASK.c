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
struct inode {unsigned long i_ino; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC2 (struct dentry*,char const*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *dir, const char *name,
			unsigned long *ino)
{
	struct dentry *dentry = FUNC2(dir, name);
	struct inode *inode;

	if (!dentry)
		return FUNC0(-ENOMEM);

	inode = FUNC6(dir->d_sb, S_IFDIR | S_IRUGO | S_IXUGO);
	if (!inode) {
		FUNC4(dentry);
		return FUNC0(-ENOMEM);
	}

	inode->i_op = &simple_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;
	inode->i_ino = ++(*ino);
	/* directory inodes start off with i_nlink == 2 (for "." entry) */
	FUNC5(inode);
	FUNC1(dentry, inode);
	/* bump link count on parent directory, too */
	FUNC5(FUNC3(dir));

	return dentry;
}