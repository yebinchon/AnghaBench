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
struct inode {struct address_space* i_mapping; } ;
struct extent_info {scalar_t__ blk; scalar_t__ fofs; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE_READ ; 
 int EFSCORRUPTED ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 scalar_t__ NEW_ADDR ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (struct address_space*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*,scalar_t__,struct extent_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int FUNC10 (struct inode*,struct page*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct page *FUNC15(struct inode *inode, pgoff_t index,
						int op_flags, bool for_write)
{
	struct address_space *mapping = inode->i_mapping;
	struct dnode_of_data dn;
	struct page *page;
	struct extent_info ei = {0,0,0};
	int err;

	page = FUNC5(mapping, index, for_write);
	if (!page)
		return FUNC0(-ENOMEM);

	if (FUNC7(inode, index, &ei)) {
		dn.data_blkaddr = ei.blk + index - ei.fofs;
		if (!FUNC6(FUNC1(inode), dn.data_blkaddr,
						DATA_GENERIC_ENHANCE_READ)) {
			err = -EFSCORRUPTED;
			goto put_err;
		}
		goto got_it;
	}

	FUNC11(&dn, inode, NULL, NULL, 0);
	err = FUNC4(&dn, index, LOOKUP_NODE);
	if (err)
		goto put_err;
	FUNC8(&dn);

	if (FUNC12(dn.data_blkaddr == NULL_ADDR)) {
		err = -ENOENT;
		goto put_err;
	}
	if (dn.data_blkaddr != NEW_ADDR &&
			!FUNC6(FUNC1(inode),
						dn.data_blkaddr,
						DATA_GENERIC_ENHANCE)) {
		err = -EFSCORRUPTED;
		goto put_err;
	}
got_it:
	if (FUNC2(page)) {
		FUNC13(page);
		return page;
	}

	/*
	 * A new dentry page is allocated but not able to be written, since its
	 * new inode page couldn't be allocated due to -ENOSPC.
	 * In such the case, its blkaddr can be remained as NEW_ADDR.
	 * see, f2fs_add_link -> f2fs_get_new_data_page ->
	 * f2fs_init_inode_metadata.
	 */
	if (dn.data_blkaddr == NEW_ADDR) {
		FUNC14(page, 0, PAGE_SIZE);
		if (!FUNC2(page))
			FUNC3(page);
		FUNC13(page);
		return page;
	}

	err = FUNC10(inode, page, dn.data_blkaddr);
	if (err)
		goto put_err;
	return page;

put_err:
	FUNC9(page, 1);
	return FUNC0(err);
}