#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_nlink; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  enum cp_reason_type { ____Placeholder_cp_reason_type } cp_reason_type ;
struct TYPE_4__ {int /*<<< orphan*/  i_pino; } ;
struct TYPE_3__ {int active_logs; scalar_t__ fsync_mode; } ;

/* Variables and functions */
 int CP_FASTBOOT_MODE ; 
 int CP_HARDLINK ; 
 int CP_NODE_NEED_CP ; 
 int CP_NON_REGULAR ; 
 int CP_NO_NEEDED ; 
 int CP_NO_SPC_ROLL ; 
 int CP_RECOVER_DIR ; 
 int CP_SB_NEED_CP ; 
 int CP_SPEC_LOG_NUM ; 
 int CP_WRONG_PINO ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 TYPE_1__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FASTBOOT ; 
 scalar_t__ FSYNC_MODE_STRICT ; 
 int /*<<< orphan*/  SBI_NEED_CP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_DIR_INO ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline enum cp_reason_type FUNC11(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	enum cp_reason_type cp_reason = CP_NO_NEEDED;

	if (!FUNC3(inode->i_mode))
		cp_reason = CP_NON_REGULAR;
	else if (inode->i_nlink != 1)
		cp_reason = CP_HARDLINK;
	else if (FUNC9(sbi, SBI_NEED_CP))
		cp_reason = CP_SB_NEED_CP;
	else if (FUNC8(inode))
		cp_reason = CP_WRONG_PINO;
	else if (!FUNC7(sbi))
		cp_reason = CP_NO_SPC_ROLL;
	else if (!FUNC5(sbi, FUNC0(inode)->i_pino))
		cp_reason = CP_NODE_NEED_CP;
	else if (FUNC10(sbi, FASTBOOT))
		cp_reason = CP_FASTBOOT_MODE;
	else if (FUNC2(sbi).active_logs == 2)
		cp_reason = CP_SPEC_LOG_NUM;
	else if (FUNC2(sbi).fsync_mode == FSYNC_MODE_STRICT &&
		FUNC6(sbi, inode->i_ino) &&
		FUNC4(sbi, FUNC0(inode)->i_pino,
							TRANS_DIR_INO))
		cp_reason = CP_RECOVER_DIR;

	return cp_reason;
}