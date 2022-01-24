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
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = FUNC3(dentry);
	int res;

	if (FUNC0(inode->i_mode) && inode->i_size != 2)
		return -ENOTEMPTY;
	res = FUNC4(inode->i_ino, dir, &dentry->d_name);
	if (res)
		return res;
	FUNC1(inode);
	inode->i_ctime = FUNC2(inode);
	FUNC5(inode);
	FUNC6(inode);
	return 0;
}