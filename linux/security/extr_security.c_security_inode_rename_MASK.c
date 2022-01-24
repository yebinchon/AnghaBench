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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int RENAME_EXCHANGE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,struct dentry*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  inode_rename ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct inode *old_dir, struct dentry *old_dentry,
			   struct inode *new_dir, struct dentry *new_dentry,
			   unsigned int flags)
{
        if (FUNC4(FUNC0(FUNC2(old_dentry)) ||
            (FUNC3(new_dentry) && FUNC0(FUNC2(new_dentry)))))
		return 0;

	if (flags & RENAME_EXCHANGE) {
		int err = FUNC1(inode_rename, 0, new_dir, new_dentry,
						     old_dir, old_dentry);
		if (err)
			return err;
	}

	return FUNC1(inode_rename, 0, old_dir, old_dentry,
					   new_dir, new_dentry);
}