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
 int FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct dentry * old_dentry, struct inode * dir, 
	struct dentry * dentry)
{
	struct inode *inode = FUNC2(old_dentry);

	inode->i_ctime = FUNC1(inode);
	FUNC4(inode);
	FUNC3(inode);

	return FUNC0(dentry, inode);
}