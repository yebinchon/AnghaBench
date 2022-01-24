#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {char* i_link; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; TYPE_2__* i_mapping; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/ * i_fop; } ;
struct TYPE_5__ {scalar_t__ i_symlink; } ;
struct TYPE_7__ {TYPE_1__ i_u1; } ;
struct TYPE_6__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  simple_symlink_inode_operations ; 
 int /*<<< orphan*/  ufs_aops ; 
 int /*<<< orphan*/  ufs_dir_inode_operations ; 
 int /*<<< orphan*/  ufs_dir_operations ; 
 int /*<<< orphan*/  ufs_file_inode_operations ; 
 int /*<<< orphan*/  ufs_file_operations ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(struct inode *inode)
{
	if (FUNC2(inode->i_mode)) {
		inode->i_op = &ufs_file_inode_operations;
		inode->i_fop = &ufs_file_operations;
		inode->i_mapping->a_ops = &ufs_aops;
	} else if (FUNC0(inode->i_mode)) {
		inode->i_op = &ufs_dir_inode_operations;
		inode->i_fop = &ufs_dir_operations;
		inode->i_mapping->a_ops = &ufs_aops;
	} else if (FUNC1(inode->i_mode)) {
		if (!inode->i_blocks) {
			inode->i_link = (char *)FUNC3(inode)->i_u1.i_symlink;
			inode->i_op = &simple_symlink_inode_operations;
		} else {
			inode->i_mapping->a_ops = &ufs_aops;
			inode->i_op = &page_symlink_inode_operations;
			FUNC5(inode);
		}
	} else
		FUNC4(inode, inode->i_mode,
				   FUNC6(inode->i_sb, FUNC3(inode)));
}