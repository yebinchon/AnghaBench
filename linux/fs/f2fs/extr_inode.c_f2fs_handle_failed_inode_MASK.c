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
struct node_info {scalar_t__ blk_addr; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_FREE_NID ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

void FUNC14(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct node_info ni;
	int err;

	/*
	 * clear nlink of inode in order to release resource of inode
	 * immediately.
	 */
	FUNC1(inode);

	/*
	 * we must call this to avoid inode being remained as dirty, resulting
	 * in a panic when flushing dirty inodes in gdirty_list.
	 */
	FUNC8(inode);
	FUNC6(inode);

	/* don't make bad inode, since it becomes a regular file. */
	FUNC13(inode);

	/*
	 * Note: we should add inode to orphan list before f2fs_unlock_op()
	 * so we can prevent losing this orphan when encoutering checkpoint
	 * and following suddenly power-off.
	 */
	err = FUNC5(sbi, inode->i_ino, &ni);
	if (err) {
		FUNC12(sbi, SBI_NEED_FSCK);
		FUNC9(sbi, "May loss orphan inode, run fsck to fix.");
		goto out;
	}

	if (ni.blk_addr != NULL_ADDR) {
		err = FUNC2(sbi);
		if (err) {
			FUNC12(sbi, SBI_NEED_FSCK);
			FUNC9(sbi, "Too many orphan inodes, run fsck to fix.");
		} else {
			FUNC3(inode);
		}
		FUNC4(sbi, inode->i_ino);
	} else {
		FUNC11(inode, FI_FREE_NID);
	}

out:
	FUNC7(sbi);

	/* iput will drop the inode object */
	FUNC10(inode);
}