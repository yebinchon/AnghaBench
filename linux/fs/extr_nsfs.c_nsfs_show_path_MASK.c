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
struct seq_file {int dummy; } ;
struct proc_ns_operations {int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {struct proc_ns_operations* d_fsdata; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, struct dentry *dentry)
{
	struct inode *inode = FUNC0(dentry);
	const struct proc_ns_operations *ns_ops = dentry->d_fsdata;

	FUNC1(seq, "%s:[%lu]", ns_ops->name, inode->i_ino);
	return 0;
}