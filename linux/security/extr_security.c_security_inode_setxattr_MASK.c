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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct dentry*,char const*,void const*,size_t,int) ; 
 int FUNC2 (struct dentry*,char const*,void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*,char const*,void const*,size_t) ; 
 int FUNC5 (struct dentry*,char const*,void const*,size_t) ; 
 int /*<<< orphan*/  inode_setxattr ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct dentry *dentry, const char *name,
			    const void *value, size_t size, int flags)
{
	int ret;

	if (FUNC6(FUNC0(FUNC3(dentry))))
		return 0;
	/*
	 * SELinux and Smack integrate the cap call,
	 * so assume that all LSMs supplying this call do so.
	 */
	ret = FUNC1(inode_setxattr, 1, dentry, name, value, size,
				flags);

	if (ret == 1)
		ret = FUNC2(dentry, name, value, size, flags);
	if (ret)
		return ret;
	ret = FUNC5(dentry, name, value, size);
	if (ret)
		return ret;
	return FUNC4(dentry, name, value, size);
}