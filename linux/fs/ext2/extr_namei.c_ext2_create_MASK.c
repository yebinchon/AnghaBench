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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*,struct inode*) ; 
 struct inode* FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7 (struct inode * dir, struct dentry * dentry, umode_t mode, bool excl)
{
	struct inode *inode;
	int err;

	err = FUNC2(dir);
	if (err)
		return err;

	inode = FUNC4(dir, mode, &dentry->d_name);
	if (FUNC0(inode))
		return FUNC1(inode);

	FUNC5(inode);
	FUNC6(inode);
	return FUNC3(dentry, inode);
}