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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {scalar_t__ op; int op_flags; int /*<<< orphan*/  old_blkaddr; } ;
struct TYPE_2__ {unsigned int ipu_policy; scalar_t__ min_ipu_util; } ;

/* Variables and functions */
 int F2FS_IPU_ASYNC ; 
 int F2FS_IPU_FORCE ; 
 int F2FS_IPU_FSYNC ; 
 int F2FS_IPU_SSR ; 
 int F2FS_IPU_SSR_UTIL ; 
 int F2FS_IPU_UTIL ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_NEED_IPU ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 TYPE_1__* FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*) ; 

__attribute__((used)) static inline bool FUNC9(struct inode *inode,
				struct f2fs_io_info *fio)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	unsigned int policy = FUNC2(sbi)->ipu_policy;

	if (policy & (0x1 << F2FS_IPU_FORCE))
		return true;
	if (policy & (0x1 << F2FS_IPU_SSR) && FUNC4(sbi))
		return true;
	if (policy & (0x1 << F2FS_IPU_UTIL) &&
			FUNC8(sbi) > FUNC2(sbi)->min_ipu_util)
		return true;
	if (policy & (0x1 << F2FS_IPU_SSR_UTIL) && FUNC4(sbi) &&
			FUNC8(sbi) > FUNC2(sbi)->min_ipu_util)
		return true;

	/*
	 * IPU for rewrite async pages
	 */
	if (policy & (0x1 << F2FS_IPU_ASYNC) &&
			fio && fio->op == REQ_OP_WRITE &&
			!(fio->op_flags & REQ_SYNC) &&
			!FUNC1(inode))
		return true;

	/* this is only set during fdatasync */
	if (policy & (0x1 << F2FS_IPU_FSYNC) &&
			FUNC5(inode, FI_NEED_IPU))
		return true;

	if (FUNC7(fio && FUNC6(sbi, SBI_CP_DISABLED) &&
			!FUNC3(sbi, fio->old_blkaddr)))
		return true;

	return false;
}