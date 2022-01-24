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
struct kiocb {scalar_t__ ki_pos; int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {scalar_t__ s_bitmap_maxbytes; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EFBIG ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 struct ext4_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC5 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct iov_iter*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct kiocb *iocb, struct iov_iter *from)
{
	struct inode *inode = FUNC3(iocb->ki_filp);
	ssize_t ret;

	ret = FUNC4(iocb, from);
	if (ret <= 0)
		return ret;

	if (FUNC7(FUNC1(inode)))
		return -EPERM;

	/*
	 * If we have encountered a bitmap-format file, the size limit
	 * is smaller than s_maxbytes, which is for extent-mapped files.
	 */
	if (!(FUNC2(inode, EXT4_INODE_EXTENTS))) {
		struct ext4_sb_info *sbi = FUNC0(inode->i_sb);

		if (iocb->ki_pos >= sbi->s_bitmap_maxbytes)
			return -EFBIG;
		FUNC6(from, sbi->s_bitmap_maxbytes - iocb->ki_pos);
	}
	return FUNC5(from);
}