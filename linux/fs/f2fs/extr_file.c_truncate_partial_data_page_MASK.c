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
typedef  int u64 ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct page* FUNC6 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 struct page* FUNC9 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int,int) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, u64 from,
								bool cache_only)
{
	loff_t offset = from & (PAGE_SIZE - 1);
	pgoff_t index = from >> PAGE_SHIFT;
	struct address_space *mapping = inode->i_mapping;
	struct page *page;

	if (!offset && !cache_only)
		return 0;

	if (cache_only) {
		page = FUNC9(mapping, index);
		if (page && FUNC4(page))
			goto truncate_out;
		FUNC7(page, 1);
		return 0;
	}

	page = FUNC6(inode, index, true);
	if (FUNC2(page))
		return FUNC3(page) == -ENOENT ? 0 : FUNC3(page);
truncate_out:
	FUNC8(page, DATA, true, true);
	FUNC11(page, offset, PAGE_SIZE - offset);

	/* An encrypted inode should have a key and truncate the last page. */
	FUNC5(FUNC0(inode), cache_only && FUNC1(inode));
	if (!cache_only)
		FUNC10(page);
	FUNC7(page, 1);
	return 0;
}