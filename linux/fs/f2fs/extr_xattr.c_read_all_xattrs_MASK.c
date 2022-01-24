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
struct f2fs_xattr_header {void* h_refcount; void* h_magic; } ;
typedef  scalar_t__ nid_t ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ F2FS_XATTR_MAGIC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int VALID_XATTR_BLOCK_SIZE ; 
 struct f2fs_xattr_header* FUNC2 (void*) ; 
 scalar_t__ XATTR_PADDING_SIZE ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 int FUNC8 (struct inode*,struct page*,void*) ; 
 int FUNC9 (struct inode*,void*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct page *ipage,
							void **base_addr)
{
	struct f2fs_xattr_header *header;
	nid_t xnid = FUNC0(inode)->i_xattr_nid;
	unsigned int size = VALID_XATTR_BLOCK_SIZE;
	unsigned int inline_size = FUNC5(inode);
	void *txattr_addr;
	int err;

	txattr_addr = FUNC4(FUNC1(inode),
			inline_size + size + XATTR_PADDING_SIZE, GFP_NOFS);
	if (!txattr_addr)
		return -ENOMEM;

	/* read from inline xattr */
	if (inline_size) {
		err = FUNC8(inode, ipage, txattr_addr);
		if (err)
			goto fail;
	}

	/* read from xattr node block */
	if (xnid) {
		err = FUNC9(inode, txattr_addr);
		if (err)
			goto fail;
	}

	header = FUNC2(txattr_addr);

	/* never been allocated xattrs */
	if (FUNC7(header->h_magic) != F2FS_XATTR_MAGIC) {
		header->h_magic = FUNC3(F2FS_XATTR_MAGIC);
		header->h_refcount = FUNC3(1);
	}
	*base_addr = txattr_addr;
	return 0;
fail:
	FUNC6(txattr_addr);
	return err;
}