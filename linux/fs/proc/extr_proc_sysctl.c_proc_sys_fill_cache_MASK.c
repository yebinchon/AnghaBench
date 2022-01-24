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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {struct inode* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dir_context {int dummy; } ;
struct dentry {int i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  d_sb; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int /*<<< orphan*/  procname; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int DT_UNKNOWN ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct inode*,struct qstr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct inode*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC8 (struct inode*,struct inode*) ; 
 int FUNC9 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_sys_dentry_operations ; 
 struct inode* FUNC12 (int /*<<< orphan*/ ,struct ctl_table_header*,struct ctl_table*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static bool FUNC15(struct file *file,
				struct dir_context *ctx,
				struct ctl_table_header *head,
				struct ctl_table *table)
{
	struct dentry *child, *dir = file->f_path.dentry;
	struct inode *inode;
	struct qstr qname;
	ino_t ino = 0;
	unsigned type = DT_UNKNOWN;

	qname.name = table->procname;
	qname.len  = FUNC13(table->procname);
	qname.hash = FUNC11(dir, qname.name, qname.len);

	child = FUNC5(dir, &qname);
	if (!child) {
		FUNC0(wq);
		child = FUNC2(dir, &qname, &wq);
		if (FUNC1(child))
			return false;
		if (FUNC3(child)) {
			struct dentry *res;
			inode = FUNC12(dir->d_sb, head, table);
			if (FUNC1(inode)) {
				FUNC6(child);
				FUNC10(child);
				return false;
			}
			FUNC7(child, &proc_sys_dentry_operations);
			res = FUNC8(inode, child);
			FUNC6(child);
			if (FUNC14(res)) {
				if (FUNC1(res)) {
					FUNC10(child);
					return false;
				}
				FUNC10(child);
				child = res;
			}
		}
	}
	inode = FUNC4(child);
	ino  = inode->i_ino;
	type = inode->i_mode >> 12;
	FUNC10(child);
	return FUNC9(ctx, qname.name, qname.len, ino, type);
}