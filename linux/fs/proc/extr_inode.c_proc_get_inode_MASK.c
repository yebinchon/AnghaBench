#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct proc_dir_entry {TYPE_1__* proc_fops; scalar_t__ proc_iops; scalar_t__ nlink; scalar_t__ size; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; scalar_t__ mode; int /*<<< orphan*/  low_ino; } ;
struct inode {TYPE_1__* i_fop; scalar_t__ i_mode; scalar_t__ i_op; scalar_t__ i_size; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct TYPE_5__ {struct proc_dir_entry* pde; } ;
struct TYPE_4__ {int /*<<< orphan*/  compat_ioctl; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc_dir_entry*) ; 
 TYPE_1__ proc_reg_file_ops ; 
 TYPE_1__ proc_reg_file_ops_no_compat ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 

struct inode *FUNC9(struct super_block *sb, struct proc_dir_entry *de)
{
	struct inode *inode = FUNC6(sb);

	if (inode) {
		inode->i_ino = de->low_ino;
		inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC3(inode);
		FUNC0(inode)->pde = de;

		if (FUNC4(de)) {
			FUNC5(inode);
			return inode;
		}
		if (de->mode) {
			inode->i_mode = de->mode;
			inode->i_uid = de->uid;
			inode->i_gid = de->gid;
		}
		if (de->size)
			inode->i_size = de->size;
		if (de->nlink)
			FUNC8(inode, de->nlink);
		FUNC2(!de->proc_iops);
		inode->i_op = de->proc_iops;
		if (de->proc_fops) {
			if (FUNC1(inode->i_mode)) {
#ifdef CONFIG_COMPAT
				if (!de->proc_fops->compat_ioctl)
					inode->i_fop =
						&proc_reg_file_ops_no_compat;
				else
#endif
					inode->i_fop = &proc_reg_file_ops;
			} else {
				inode->i_fop = de->proc_fops;
			}
		}
	} else
	       FUNC7(de);
	return inode;
}