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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_block_reservation_lock; int /*<<< orphan*/  i_reserved_data_blocks; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct ext4_sb_info*,int) ; 
 struct ext4_inode_info* FUNC1 (struct inode*) ; 
 struct ext4_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ext4_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode)
{
	struct ext4_sb_info *sbi = FUNC2(inode->i_sb);
	struct ext4_inode_info *ei = FUNC1(inode);
	int ret;

	/*
	 * We will charge metadata quota at writeout time; this saves
	 * us from metadata over-estimation, though we may go over by
	 * a small amount in the end.  Here we just reserve for data.
	 */
	ret = FUNC4(inode, FUNC0(sbi, 1));
	if (ret)
		return ret;

	FUNC6(&ei->i_block_reservation_lock);
	if (FUNC5(sbi, 1, 0)) {
		FUNC7(&ei->i_block_reservation_lock);
		FUNC3(inode, FUNC0(sbi, 1));
		return -ENOSPC;
	}
	ei->i_reserved_data_blocks++;
	FUNC8(inode);
	FUNC7(&ei->i_block_reservation_lock);

	return 0;       /* success */
}