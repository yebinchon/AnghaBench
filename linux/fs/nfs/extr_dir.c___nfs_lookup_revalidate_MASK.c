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
typedef  struct inode inode ;
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 

__attribute__((used)) static int
FUNC5(struct dentry *dentry, unsigned int flags,
			int (*reval)(struct inode *, struct dentry *, unsigned int))
{
	struct dentry *parent;
	struct inode *dir;
	int ret;

	if (flags & LOOKUP_RCU) {
		parent = FUNC0(dentry->d_parent);
		dir = FUNC2(parent);
		if (!dir)
			return -ECHILD;
		ret = reval(dir, dentry, flags);
		if (parent != FUNC0(dentry->d_parent))
			return -ECHILD;
	} else {
		parent = FUNC3(dentry);
		ret = reval(FUNC1(parent), dentry, flags);
		FUNC4(parent);
	}
	return ret;
}