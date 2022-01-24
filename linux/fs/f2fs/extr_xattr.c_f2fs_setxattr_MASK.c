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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_sem; int /*<<< orphan*/  i_xattr_sem; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int FUNC2 (struct inode*,int,char const*,void const*,size_t,struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct inode *inode, int index, const char *name,
				const void *value, size_t size,
				struct page *ipage, int flags)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	int err;

	if (FUNC11(FUNC6(sbi)))
		return -EIO;
	if (!FUNC7(sbi))
		return -ENOSPC;

	err = FUNC4(inode);
	if (err)
		return err;

	/* this case is only from f2fs_init_inode_metadata */
	if (ipage)
		return FUNC2(inode, index, name, value,
						size, ipage, flags);
	FUNC5(sbi, true);

	FUNC8(sbi);
	/* protect xattr_ver */
	FUNC3(&FUNC0(inode)->i_sem);
	FUNC3(&FUNC0(inode)->i_xattr_sem);
	err = FUNC2(inode, index, name, value, size, ipage, flags);
	FUNC12(&FUNC0(inode)->i_xattr_sem);
	FUNC12(&FUNC0(inode)->i_sem);
	FUNC9(sbi);

	FUNC10(sbi, REQ_TIME);
	return err;
}