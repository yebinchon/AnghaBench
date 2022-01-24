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
struct dentry {struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int FUNC8 (struct inode*,struct dentry*) ; 

void FUNC9(struct dentry *dentry)
{
	struct inode *dir = FUNC3(dentry->d_parent);
	struct inode *inode = FUNC3(dentry);
	int ret;

	FUNC5(dir);
	FUNC7(dentry);
	FUNC1(inode);
	FUNC4(dentry);
	ret = FUNC8(dir, dentry);
	FUNC0(ret);
	FUNC2(dentry);
	FUNC6(dir);
}