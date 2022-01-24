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
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 int FUNC0 (struct inode*,struct dentry*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct inode*,struct dentry*,unsigned int) ; 

__attribute__((used)) static int
FUNC2(struct inode *dir, struct dentry *dentry,
			       unsigned int flags)
{
	int ret = 1;
	if (FUNC1(dir, dentry, flags)) {
		if (flags & LOOKUP_RCU)
			return -ECHILD;
		ret = 0;
	}
	return FUNC0(dir, dentry, NULL, ret);
}