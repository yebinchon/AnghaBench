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
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dentry*,struct inode*) ; 
 struct inode* FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry, umode_t mode,
		     dev_t rdev)
{
	struct inode *inode;

	if (!FUNC3(rdev))
		return -EINVAL;

	inode = FUNC5(dir, mode);
	if (FUNC0(inode))
		return FUNC1(inode);

	FUNC2(inode, mode, rdev);
	return FUNC4(dentry, inode);
}