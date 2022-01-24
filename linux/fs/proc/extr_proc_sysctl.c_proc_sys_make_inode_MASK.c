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
struct super_block {int dummy; } ;
struct proc_inode {int /*<<< orphan*/  sysctl_inodes; struct ctl_table* sysctl_entry; struct ctl_table_header* sysctl; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct ctl_table_root {int /*<<< orphan*/  (* set_ownership ) (struct ctl_table_header*,struct ctl_table*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct ctl_table_header {int /*<<< orphan*/  count; int /*<<< orphan*/  inodes; int /*<<< orphan*/  unregistering; struct ctl_table_root* root; } ;
struct ctl_table {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  proc_sys_dir_file_operations ; 
 int /*<<< orphan*/  proc_sys_dir_operations ; 
 int /*<<< orphan*/  proc_sys_file_operations ; 
 int /*<<< orphan*/  proc_sys_inode_operations ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ctl_table_header*,struct ctl_table*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC14(struct super_block *sb,
		struct ctl_table_header *head, struct ctl_table *table)
{
	struct ctl_table_root *root = head->root;
	struct inode *inode;
	struct proc_inode *ei;

	inode = FUNC9(sb);
	if (!inode)
		return FUNC0(-ENOMEM);

	inode->i_ino = FUNC4();

	ei = FUNC1(inode);

	FUNC10(&sysctl_lock);
	if (FUNC13(head->unregistering)) {
		FUNC11(&sysctl_lock);
		FUNC6(inode);
		return FUNC0(-ENOENT);
	}
	ei->sysctl = head;
	ei->sysctl_entry = table;
	FUNC5(&ei->sysctl_inodes, &head->inodes);
	head->count++;
	FUNC11(&sysctl_lock);

	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC3(inode);
	inode->i_mode = table->mode;
	if (!FUNC2(table->mode)) {
		inode->i_mode |= S_IFREG;
		inode->i_op = &proc_sys_inode_operations;
		inode->i_fop = &proc_sys_file_operations;
	} else {
		inode->i_mode |= S_IFDIR;
		inode->i_op = &proc_sys_dir_operations;
		inode->i_fop = &proc_sys_dir_file_operations;
		if (FUNC7(head))
			FUNC8(inode);
	}

	if (root->set_ownership)
		root->set_ownership(head, table, &inode->i_uid, &inode->i_gid);
	else {
		inode->i_uid = GLOBAL_ROOT_UID;
		inode->i_gid = GLOBAL_ROOT_GID;
	}

	return inode;
}