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
struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int WRITE ; 
 scalar_t__ FUNC3 (struct inode*,struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*) ; 
 int FUNC7 (struct iov_iter*) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC10(struct inode *inode,
				struct kiocb *iocb, struct iov_iter *iter)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	int rw = FUNC7(iter);

	if (FUNC5(inode))
		return true;
	if (FUNC4(sbi))
		return true;
	/*
	 * for blkzoned device, fallback direct IO to buffered IO, so
	 * all IOs can be serialized by log-structured write.
	 */
	if (FUNC6(sbi))
		return true;
	if (FUNC9(sbi, LFS) && (rw == WRITE)) {
		if (FUNC3(inode, iocb, iter))
			return true;
		if (FUNC0(sbi))
			return true;
	}
	if (FUNC8(FUNC1(inode), SBI_CP_DISABLED) &&
					!FUNC2(inode))
		return true;

	return false;
}