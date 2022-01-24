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
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;
typedef  size_t __u32 ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  NODE ; 
 int FUNC3 (struct page*) ; 
 size_t VALID_XATTR_BLOCK_SIZE ; 
 int /*<<< orphan*/  XATTR_NODE_OFFSET ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (struct f2fs_sb_info*,scalar_t__) ; 
 struct page* FUNC9 (struct dnode_of_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC13 (struct inode*,struct page*) ; 
 size_t FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*,size_t) ; 
 void* FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

__attribute__((used)) static inline int FUNC19(struct inode *inode, __u32 hsize,
				void *txattr_addr, struct page *ipage)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	size_t inline_size = FUNC14(inode);
	struct page *in_page = NULL;
	void *xattr_addr;
	void *inline_addr = NULL;
	struct page *xpage;
	nid_t new_nid = 0;
	int err = 0;

	if (hsize > inline_size && !FUNC0(inode)->i_xattr_nid)
		if (!FUNC4(sbi, &new_nid))
			return -ENOSPC;

	/* write to inline xattr */
	if (inline_size) {
		if (ipage) {
			inline_addr = FUNC13(inode, ipage);
		} else {
			in_page = FUNC8(sbi, inode->i_ino);
			if (FUNC2(in_page)) {
				FUNC6(sbi, new_nid);
				return FUNC3(in_page);
			}
			inline_addr = FUNC13(inode, in_page);
		}

		FUNC12(ipage ? ipage : in_page,
							NODE, true, true);
		/* no need to use xattr node block */
		if (hsize <= inline_size) {
			err = FUNC11(inode);
			FUNC6(sbi, new_nid);
			if (err) {
				FUNC10(in_page, 1);
				return err;
			}
			FUNC15(inline_addr, txattr_addr, inline_size);
			FUNC18(ipage ? ipage : in_page);
			goto in_page_out;
		}
	}

	/* write to xattr node block */
	if (FUNC0(inode)->i_xattr_nid) {
		xpage = FUNC8(sbi, FUNC0(inode)->i_xattr_nid);
		if (FUNC2(xpage)) {
			err = FUNC3(xpage);
			FUNC6(sbi, new_nid);
			goto in_page_out;
		}
		FUNC7(sbi, new_nid);
		FUNC12(xpage, NODE, true, true);
	} else {
		struct dnode_of_data dn;
		FUNC17(&dn, inode, NULL, NULL, new_nid);
		xpage = FUNC9(&dn, XATTR_NODE_OFFSET);
		if (FUNC2(xpage)) {
			err = FUNC3(xpage);
			FUNC6(sbi, new_nid);
			goto in_page_out;
		}
		FUNC5(sbi, new_nid);
	}
	xattr_addr = FUNC16(xpage);

	if (inline_size)
		FUNC15(inline_addr, txattr_addr, inline_size);
	FUNC15(xattr_addr, txattr_addr + inline_size, VALID_XATTR_BLOCK_SIZE);

	if (inline_size)
		FUNC18(ipage ? ipage : in_page);
	FUNC18(xpage);

	FUNC10(xpage, 1);
in_page_out:
	FUNC10(in_page, 1);
	return err;
}