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
struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct kernfs_node*,struct iattr*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct iattr*) ; 
 int FUNC5 (struct dentry*,struct iattr*) ; 

int FUNC6(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = FUNC1(dentry);
	struct kernfs_node *kn = inode->i_private;
	int error;

	if (!kn)
		return -EINVAL;

	FUNC2(&kernfs_mutex);
	error = FUNC5(dentry, iattr);
	if (error)
		goto out;

	error = FUNC0(kn, iattr);
	if (error)
		goto out;

	/* this ignores size changes */
	FUNC4(inode, iattr);

out:
	FUNC3(&kernfs_mutex);
	return error;
}