#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {scalar_t__ s_export_op; struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int /*<<< orphan*/  upper_mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_nlink; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 

__attribute__((used)) static bool FUNC3(struct super_block *sb, struct dentry *upper,
			     struct dentry *lower, struct dentry *index)
{
	struct ovl_fs *ofs = sb->s_fs_info;

	/* No, if pure upper */
	if (!lower)
		return false;

	/* Yes, if already indexed */
	if (index)
		return true;

	/* Yes, if won't be copied up */
	if (!ofs->upper_mnt)
		return true;

	/* No, if lower hardlink is or will be broken on copy up */
	if ((upper || !FUNC2(sb)) &&
	    !FUNC1(lower) && FUNC0(lower)->i_nlink > 1)
		return false;

	/* No, if non-indexed upper with NFS export */
	if (sb->s_export_op && upper)
		return false;

	/* Otherwise, hash by lower inode for fsnotify */
	return true;
}