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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_fsdata; int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int RENAME_NOREPLACE ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 
 int FUNC4 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC5(struct inode *old_dir, struct dentry *old_dentry,
			  struct inode *new_dir, struct dentry *new_dentry,
			  unsigned int flags)
{
	int res;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	/* Unlink destination if it already exists */
	if (FUNC1(new_dentry)) {
		if (FUNC0(new_dentry))
			res = FUNC3(new_dir, new_dentry);
		else
			res = FUNC4(new_dir, new_dentry);
		if (res)
			return res;
	}

	res = FUNC2((u32)(unsigned long)old_dentry->d_fsdata,
				 old_dir, &old_dentry->d_name,
				 new_dir, &new_dentry->d_name);
	if (!res)
		new_dentry->d_fsdata = old_dentry->d_fsdata;
	return res;
}