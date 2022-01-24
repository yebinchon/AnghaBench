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
struct dnode_of_data {scalar_t__ data_blkaddr; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ NEW_ADDR ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*) ; 
 struct page* FUNC6 (struct inode*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC7 (struct address_space*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int FUNC11 (struct dnode_of_data*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct dnode_of_data*,struct inode*,struct page*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct page *FUNC15(struct inode *inode,
		struct page *ipage, pgoff_t index, bool new_i_size)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
	struct dnode_of_data dn;
	int err;

	page = FUNC7(mapping, index, true);
	if (!page) {
		/*
		 * before exiting, we should make sure ipage will be released
		 * if any error occur.
		 */
		FUNC10(ipage, 1);
		return FUNC0(-ENOMEM);
	}

	FUNC13(&dn, inode, ipage, NULL, 0);
	err = FUNC11(&dn, index);
	if (err) {
		FUNC10(page, 1);
		return FUNC0(err);
	}
	if (!ipage)
		FUNC9(&dn);

	if (FUNC3(page))
		goto got_it;

	if (dn.data_blkaddr == NEW_ADDR) {
		FUNC14(page, 0, PAGE_SIZE);
		if (!FUNC3(page))
			FUNC4(page);
	} else {
		FUNC10(page, 1);

		/* if ipage exists, blkaddr should be NEW_ADDR */
		FUNC5(FUNC1(inode), ipage);
		page = FUNC6(inode, index, true);
		if (FUNC2(page))
			return page;
	}
got_it:
	if (new_i_size && FUNC12(inode) <
				((loff_t)(index + 1) << PAGE_SHIFT))
		FUNC8(inode, ((loff_t)(index + 1) << PAGE_SHIFT));
	return page;
}