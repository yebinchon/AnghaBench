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
struct inode {scalar_t__ i_ino; int i_state; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_nlink; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 int I_SYNC ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*) ; 
 int FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	int ret;

	/*
	 * during filesystem shutdown, if checkpoint is disabled,
	 * drop useless meta/node dirty pages.
	 */
	if (FUNC23(FUNC16(sbi, SBI_CP_DISABLED))) {
		if (inode->i_ino == FUNC3(sbi) ||
			inode->i_ino == FUNC2(sbi)) {
			FUNC21(inode, 1);
			return 1;
		}
	}

	/*
	 * This is to avoid a deadlock condition like below.
	 * writeback_single_inode(inode)
	 *  - f2fs_write_data_page
	 *    - f2fs_gc -> iput -> evict
	 *       - inode_wait_for_writeback(inode)
	 */
	if ((!FUNC14(inode) && inode->i_state & I_SYNC)) {
		if (!inode->i_nlink && !FUNC15(inode)) {
			/* to avoid evict_inode call simultaneously */
			FUNC5(&inode->i_count);
			FUNC20(&inode->i_lock);

			/* some remained atomic pages should discarded */
			if (FUNC9(inode))
				FUNC7(inode);

			/* should remain fi->extent_tree for writepage */
			FUNC6(inode);

			FUNC18(inode->i_sb);
			FUNC8(inode, 0);

			FUNC10(FUNC1(inode),
					inode, NULL, 0, DATA);
			FUNC22(inode->i_mapping);

			if (FUNC0(inode))
				FUNC11(inode);

			FUNC17(inode->i_sb);

			FUNC19(&inode->i_lock);
			FUNC4(&inode->i_count);
		}
		FUNC21(inode, 0);
		return 0;
	}
	ret = FUNC13(inode);
	if (!ret)
		ret = FUNC12(inode);
	FUNC21(inode, ret);
	return ret;
}