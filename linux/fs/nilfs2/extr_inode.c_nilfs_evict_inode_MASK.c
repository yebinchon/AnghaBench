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
struct super_block {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_inode_info {TYPE_1__* i_root; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_data; scalar_t__ i_nlink; struct super_block* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  inodes_count; int /*<<< orphan*/  ifile; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct nilfs_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_TI_SYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_inode_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(struct inode *inode)
{
	struct nilfs_transaction_info ti;
	struct super_block *sb = inode->i_sb;
	struct nilfs_inode_info *ii = FUNC1(inode);
	int ret;

	if (inode->i_nlink || !ii->i_root || FUNC13(FUNC4(inode))) {
		FUNC12(&inode->i_data);
		FUNC3(inode);
		FUNC5(inode);
		return;
	}
	FUNC9(sb, &ti, 0); /* never fails */

	FUNC12(&inode->i_data);

	/* TODO: some of the following operations may fail.  */
	FUNC11(ii, 0);
	FUNC7(inode);
	FUNC3(inode);

	ret = FUNC6(ii->i_root->ifile, inode->i_ino);
	if (!ret)
		FUNC2(&ii->i_root->inodes_count);

	FUNC5(inode);

	if (FUNC0(inode))
		FUNC8(NILFS_TI_SYNC);
	FUNC10(sb);
	/*
	 * May construct a logical segment and may fail in sync mode.
	 * But delete_inode has no return value.
	 */
}