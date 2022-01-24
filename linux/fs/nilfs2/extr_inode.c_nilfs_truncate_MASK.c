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
struct super_block {unsigned int s_blocksize; unsigned int s_blocksize_bits; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; struct super_block* i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct nilfs_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BMAP ; 
 int /*<<< orphan*/  NILFS_TI_SYNC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  nilfs_get_block ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_inode_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct inode *inode)
{
	unsigned long blkoff;
	unsigned int blocksize;
	struct nilfs_transaction_info ti;
	struct super_block *sb = inode->i_sb;
	struct nilfs_inode_info *ii = FUNC3(inode);

	if (!FUNC12(NILFS_I_BMAP, &ii->i_state))
		return;
	if (FUNC0(inode) || FUNC1(inode))
		return;

	blocksize = sb->s_blocksize;
	blkoff = (inode->i_size + blocksize - 1) >> sb->s_blocksize_bits;
	FUNC9(sb, &ti, 0); /* never fails */

	FUNC4(inode->i_mapping, inode->i_size, nilfs_get_block);

	FUNC11(ii, blkoff);

	inode->i_mtime = inode->i_ctime = FUNC5(inode);
	if (FUNC2(inode))
		FUNC8(NILFS_TI_SYNC);

	FUNC6(inode);
	FUNC7(inode, 0);
	FUNC10(sb);
	/*
	 * May construct a logical segment and may fail in sync mode.
	 * But truncate has no return value.
	 */
}