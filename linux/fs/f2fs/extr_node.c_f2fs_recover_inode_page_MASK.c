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
struct page {int dummy; } ;
struct node_info {scalar_t__ blk_addr; int /*<<< orphan*/  ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int i_inline; int /*<<< orphan*/  i_crtime_nsec; int /*<<< orphan*/  i_crtime; int /*<<< orphan*/  i_extra_isize; int /*<<< orphan*/  i_projid; int /*<<< orphan*/  i_inline_xattr_size; scalar_t__ i_xattr_nid; int /*<<< orphan*/  i_links; int /*<<< orphan*/  i_blocks; scalar_t__ i_size; int /*<<< orphan*/  i_ext; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int EINVAL ; 
 int F2FS_EXTRA_ATTR ; 
 scalar_t__ FUNC0 (struct f2fs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int F2FS_INLINE_XATTR ; 
 struct f2fs_inode* FUNC1 (struct page*) ; 
 int HZ ; 
 int /*<<< orphan*/  NEW_ADDR ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int) ; 
 scalar_t__ FUNC12 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC13 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC14 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  i_crtime_nsec ; 
 int /*<<< orphan*/  i_inline_xattr_size ; 
 int /*<<< orphan*/  i_projid ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct f2fs_inode*,struct f2fs_inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct f2fs_sb_info*,struct node_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 scalar_t__ FUNC25 (int) ; 

int FUNC26(struct f2fs_sb_info *sbi, struct page *page)
{
	struct f2fs_inode *src, *dst;
	nid_t ino = FUNC18(page);
	struct node_info old_ni, new_ni;
	struct page *ipage;
	int err;

	err = FUNC9(sbi, ino, &old_ni);
	if (err)
		return err;

	if (FUNC25(old_ni.blk_addr != NULL_ADDR))
		return -EINVAL;
retry:
	ipage = FUNC10(FUNC2(sbi), ino, false);
	if (!ipage) {
		FUNC6(BLK_RW_ASYNC, HZ/50);
		goto retry;
	}

	/* Should not use this inode from free nid list */
	FUNC21(sbi, ino);

	if (!FUNC3(ipage))
		FUNC4(ipage);
	FUNC15(ipage, ino, ino, 0, true);
	FUNC22(ipage, false);

	src = FUNC1(page);
	dst = FUNC1(ipage);

	FUNC20(dst, src, (unsigned long)&src->i_ext - (unsigned long)src);
	dst->i_size = 0;
	dst->i_blocks = FUNC8(1);
	dst->i_links = FUNC7(1);
	dst->i_xattr_nid = 0;
	dst->i_inline = src->i_inline & (F2FS_INLINE_XATTR | F2FS_EXTRA_ATTR);
	if (dst->i_inline & F2FS_EXTRA_ATTR) {
		dst->i_extra_isize = src->i_extra_isize;

		if (FUNC12(sbi) &&
			FUNC0(src, FUNC19(src->i_extra_isize),
							i_inline_xattr_size))
			dst->i_inline_xattr_size = src->i_inline_xattr_size;

		if (FUNC14(sbi) &&
			FUNC0(src, FUNC19(src->i_extra_isize),
								i_projid))
			dst->i_projid = src->i_projid;

		if (FUNC13(sbi) &&
			FUNC0(src, FUNC19(src->i_extra_isize),
							i_crtime_nsec)) {
			dst->i_crtime = src->i_crtime;
			dst->i_crtime_nsec = src->i_crtime_nsec;
		}
	}

	new_ni = old_ni;
	new_ni.ino = ino;

	if (FUNC25(FUNC17(sbi, NULL, true)))
		FUNC5(1);
	FUNC23(sbi, &new_ni, NEW_ADDR, false);
	FUNC16(sbi);
	FUNC24(ipage);
	FUNC11(ipage, 1);
	return 0;
}