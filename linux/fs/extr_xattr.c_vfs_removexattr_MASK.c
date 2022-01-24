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
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAY_WRITE ; 
 int FUNC0 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct dentry*,char const*) ; 
 int FUNC6 (struct inode*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct dentry *dentry, const char *name)
{
	struct inode *inode = dentry->d_inode;
	int error;

	error = FUNC6(inode, name, MAY_WRITE);
	if (error)
		return error;

	FUNC3(inode);
	error = FUNC5(dentry, name);
	if (error)
		goto out;

	error = FUNC0(dentry, name);

	if (!error) {
		FUNC2(dentry);
		FUNC1(dentry, name);
	}

out:
	FUNC4(inode);
	return error;
}