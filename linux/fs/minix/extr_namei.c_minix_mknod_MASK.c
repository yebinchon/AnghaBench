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
 int FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct inode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode * dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
	int error;
	struct inode *inode;

	if (!FUNC4(rdev))
		return -EINVAL;

	inode = FUNC2(dir, mode, &error);

	if (inode) {
		FUNC3(inode, rdev);
		FUNC1(inode);
		error = FUNC0(dentry, inode);
	}
	return error;
}