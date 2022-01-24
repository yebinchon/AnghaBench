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
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LFS ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kiocb*,struct iov_iter*) ; 
 int FUNC2 (struct iov_iter*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct inode *inode,
				struct kiocb *iocb, struct iov_iter *iter)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	int rw = FUNC2(iter);

	return (FUNC3(sbi, LFS) && (rw == WRITE) &&
				!FUNC1(inode, iocb, iter));
}