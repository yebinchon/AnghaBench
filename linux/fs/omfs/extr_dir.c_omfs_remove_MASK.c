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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = FUNC2(dentry);
	int ret;


	if (FUNC0(inode->i_mode) &&
	    !FUNC5(inode))
		return -ENOTEMPTY;

	ret = FUNC4(dentry);
	if (ret)
		return ret;
	
	FUNC1(inode);
	FUNC3(inode);
	FUNC3(dir);
	return 0;
}