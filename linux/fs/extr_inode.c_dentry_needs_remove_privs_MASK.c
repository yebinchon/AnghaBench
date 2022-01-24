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
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_KILL_PRIV ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 

int FUNC4(struct dentry *dentry)
{
	struct inode *inode = FUNC1(dentry);
	int mask = 0;
	int ret;

	if (FUNC0(inode))
		return 0;

	mask = FUNC3(dentry);
	ret = FUNC2(dentry);
	if (ret < 0)
		return ret;
	if (ret)
		mask |= ATTR_KILL_PRIV;
	return mask;
}