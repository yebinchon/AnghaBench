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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_xattr_entry {int dummy; } ;
typedef  scalar_t__ nid_t ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int ENODATA ; 
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct f2fs_xattr_entry*) ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 void* FUNC3 (void*) ; 
 int XATTR_PADDING_SIZE ; 
 int FUNC4 (scalar_t__,struct inode*) ; 
 struct f2fs_xattr_entry* FUNC5 (struct inode*,void*,void**,unsigned int,unsigned int,char const*) ; 
 struct f2fs_xattr_entry* FUNC6 (void*,void*,unsigned int,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int FUNC11 (struct inode*,struct page*,void*) ; 
 int FUNC12 (struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct page *ipage,
				unsigned int index, unsigned int len,
				const char *name, struct f2fs_xattr_entry **xe,
				void **base_addr, int *base_size)
{
	void *cur_addr, *txattr_addr, *last_txattr_addr;
	void *last_addr = NULL;
	nid_t xnid = FUNC0(inode)->i_xattr_nid;
	unsigned int inline_size = FUNC9(inode);
	int err = 0;

	if (!xnid && !inline_size)
		return -ENODATA;

	*base_size = FUNC4(xnid, inode) + XATTR_PADDING_SIZE;
	txattr_addr = FUNC8(FUNC1(inode), *base_size, GFP_NOFS);
	if (!txattr_addr)
		return -ENOMEM;

	last_txattr_addr = (void *)txattr_addr + FUNC4(xnid, inode);

	/* read from inline xattr */
	if (inline_size) {
		err = FUNC11(inode, ipage, txattr_addr);
		if (err)
			goto out;

		*xe = FUNC5(inode, txattr_addr, &last_addr,
						index, len, name);
		if (*xe) {
			*base_size = inline_size;
			goto check;
		}
	}

	/* read from xattr node block */
	if (xnid) {
		err = FUNC12(inode, txattr_addr);
		if (err)
			goto out;
	}

	if (last_addr)
		cur_addr = FUNC3(last_addr) - 1;
	else
		cur_addr = txattr_addr;

	*xe = FUNC6(cur_addr, last_txattr_addr, index, len, name);
	if (!*xe) {
		FUNC7(FUNC1(inode), "inode (%lu) has corrupted xattr",
								inode->i_ino);
		FUNC13(FUNC1(inode), SBI_NEED_FSCK);
		err = -EFSCORRUPTED;
		goto out;
	}
check:
	if (FUNC2(*xe)) {
		err = -ENODATA;
		goto out;
	}

	*base_addr = txattr_addr;
	return 0;
out:
	FUNC10(txattr_addr);
	return err;
}