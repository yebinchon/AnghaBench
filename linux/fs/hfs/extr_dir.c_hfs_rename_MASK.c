#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  btree_key ;
struct TYPE_5__ {int /*<<< orphan*/  cat_key; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 unsigned int RENAME_NOREPLACE ; 
 TYPE_1__* FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC6(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry,
		      unsigned int flags)
{
	int res;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	/* Unlink destination if it already exists */
	if (FUNC2(new_dentry)) {
		res = FUNC5(new_dir, new_dentry);
		if (res)
			return res;
	}

	res = FUNC4(FUNC1(old_dentry)->i_ino,
			   old_dir, &old_dentry->d_name,
			   new_dir, &new_dentry->d_name);
	if (!res)
		FUNC3(old_dir->i_sb,
				  (btree_key *)&FUNC0(FUNC1(old_dentry))->cat_key,
				  new_dir->i_ino, &new_dentry->d_name);
	return res;
}