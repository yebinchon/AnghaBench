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
typedef  int umode_t ;
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  bpf_dir_iops ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static int FUNC5(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct inode *inode;

	inode = FUNC3(dir->i_sb, dir, mode | S_IFDIR);
	if (FUNC0(inode))
		return FUNC1(inode);

	inode->i_op = &bpf_dir_iops;
	inode->i_fop = &simple_dir_operations;

	FUNC4(inode);
	FUNC4(dir);

	FUNC2(dentry, inode, dir);
	return 0;
}