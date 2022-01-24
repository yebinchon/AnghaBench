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
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  inode_setattr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct dentry *dentry, struct iattr *attr)
{
	int ret;

	if (FUNC4(FUNC0(FUNC2(dentry))))
		return 0;
	ret = FUNC1(inode_setattr, 0, dentry, attr);
	if (ret)
		return ret;
	return FUNC3(dentry, attr);
}