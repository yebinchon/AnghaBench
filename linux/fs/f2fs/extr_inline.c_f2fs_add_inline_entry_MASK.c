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
typedef  int /*<<< orphan*/  umode_t ;
struct qstr {int /*<<< orphan*/  len; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_dentry_ptr {unsigned int max; int /*<<< orphan*/  bitmap; } ;
typedef  int /*<<< orphan*/  nid_t ;
typedef  int /*<<< orphan*/  f2fs_hash_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_sem; } ;

/* Variables and functions */
 int EAGAIN ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_NEW_INODE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  NODE ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct qstr const*,int /*<<< orphan*/ *) ; 
 struct page* FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 struct page* FUNC10 (struct inode*,struct inode*,struct qstr const*,struct qstr const*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct f2fs_dentry_ptr*,struct qstr const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC17 (struct inode*,struct page*) ; 
 scalar_t__ FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,struct f2fs_dentry_ptr*,void*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct inode *dir, const struct qstr *new_name,
				const struct qstr *orig_name,
				struct inode *inode, nid_t ino, umode_t mode)
{
	struct f2fs_sb_info *sbi = FUNC1(dir);
	struct page *ipage;
	unsigned int bit_pos;
	f2fs_hash_t name_hash;
	void *inline_dentry = NULL;
	struct f2fs_dentry_ptr d;
	int slots = FUNC2(new_name->len);
	struct page *page = NULL;
	int err = 0;

	ipage = FUNC8(sbi, dir->i_ino);
	if (FUNC3(ipage))
		return FUNC4(ipage);

	inline_dentry = FUNC17(dir, ipage);
	FUNC19(dir, &d, inline_dentry);

	bit_pos = FUNC12(d.bitmap, slots, d.max);
	if (bit_pos >= d.max) {
		err = FUNC6(dir, ipage, inline_dentry);
		if (err)
			return err;
		err = -EAGAIN;
		goto out;
	}

	if (inode) {
		FUNC5(&FUNC0(inode)->i_sem);
		page = FUNC10(inode, dir, new_name,
						orig_name, ipage);
		if (FUNC3(page)) {
			err = FUNC4(page);
			goto fail;
		}
	}

	FUNC16(ipage, NODE, true, true);

	name_hash = FUNC7(dir, new_name, NULL);
	FUNC13(ino, mode, &d, new_name, name_hash, bit_pos);

	FUNC20(ipage);

	/* we don't need to mark_inode_dirty now */
	if (inode) {
		FUNC9(inode, dir->i_ino);

		/* synchronize inode page's data from inode cache */
		if (FUNC18(inode, FI_NEW_INODE))
			FUNC14(inode, page);

		FUNC11(page, 1);
	}

	FUNC15(dir, inode, 0);
fail:
	if (inode)
		FUNC21(&FUNC0(inode)->i_sem);
out:
	FUNC11(ipage, 1);
	return err;
}