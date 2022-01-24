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
struct inode {int /*<<< orphan*/  i_mode; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  minix_aops ; 
 int /*<<< orphan*/  minix_dir_inode_operations ; 
 int /*<<< orphan*/  minix_dir_operations ; 
 int /*<<< orphan*/  minix_file_inode_operations ; 
 int /*<<< orphan*/  minix_file_operations ; 
 int /*<<< orphan*/  minix_symlink_inode_operations ; 

void FUNC5(struct inode *inode, dev_t rdev)
{
	if (FUNC2(inode->i_mode)) {
		inode->i_op = &minix_file_inode_operations;
		inode->i_fop = &minix_file_operations;
		inode->i_mapping->a_ops = &minix_aops;
	} else if (FUNC0(inode->i_mode)) {
		inode->i_op = &minix_dir_inode_operations;
		inode->i_fop = &minix_dir_operations;
		inode->i_mapping->a_ops = &minix_aops;
	} else if (FUNC1(inode->i_mode)) {
		inode->i_op = &minix_symlink_inode_operations;
		FUNC4(inode);
		inode->i_mapping->a_ops = &minix_aops;
	} else
		FUNC3(inode, inode->i_mode, rdev);
}