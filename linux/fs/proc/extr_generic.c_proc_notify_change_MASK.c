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
struct proc_dir_entry {int /*<<< orphan*/  mode; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_dir_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct iattr*) ; 
 int FUNC5 (struct dentry*,struct iattr*) ; 

__attribute__((used)) static int FUNC6(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = FUNC1(dentry);
	struct proc_dir_entry *de = FUNC0(inode);
	int error;

	error = FUNC5(dentry, iattr);
	if (error)
		return error;

	FUNC4(inode, iattr);
	FUNC2(inode);

	FUNC3(de, inode->i_uid, inode->i_gid);
	de->mode = inode->i_mode;
	return 0;
}