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
struct inode_operations {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; struct inode_operations const* i_op; } ;
struct dentry {TYPE_1__* d_parent; int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 struct dentry* FUNC6 (char const*,struct dentry*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct dentry *FUNC9(const char *name, struct dentry *parent,
				   const struct inode_operations *ops)
{
	struct dentry *dentry = FUNC6(name, parent);
	struct inode *inode;

	if (FUNC0(dentry))
		return NULL;

	inode = FUNC7(dentry->d_sb);
	if (FUNC8(!inode))
		return FUNC3(dentry);

	inode->i_mode = S_IFDIR | S_IRWXU | S_IRUGO | S_IXUGO;
	inode->i_op = ops;
	inode->i_fop = &simple_dir_operations;

	/* directory inodes start off with i_nlink == 2 (for "." entry) */
	FUNC5(inode);
	FUNC1(dentry, inode);
	FUNC5(dentry->d_parent->d_inode);
	FUNC4(dentry->d_parent->d_inode, dentry);
	return FUNC2(dentry);
}