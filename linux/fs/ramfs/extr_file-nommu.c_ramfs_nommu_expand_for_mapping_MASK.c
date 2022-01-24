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
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EFBIG ; 
 int ENOMEM ; 
 unsigned int MAX_ORDER ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,size_t) ; 
 int FUNC7 (struct inode*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,unsigned int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

int FUNC15(struct inode *inode, size_t newsize)
{
	unsigned long npages, xpages, loop;
	struct page *pages;
	unsigned order;
	void *data;
	int ret;
	gfp_t gfp = FUNC8(inode->i_mapping);

	/* make various checks */
	order = FUNC5(newsize);
	if (FUNC13(order >= MAX_ORDER))
		return -EFBIG;

	ret = FUNC7(inode, newsize);
	if (ret)
		return ret;

	FUNC6(inode, newsize);

	/* allocate enough contiguous pages to be able to satisfy the
	 * request */
	pages = FUNC4(gfp, order);
	if (!pages)
		return -ENOMEM;

	/* split the high-order page into an array of single pages */
	xpages = 1UL << order;
	npages = (newsize + PAGE_SIZE - 1) >> PAGE_SHIFT;

	FUNC12(pages, order);

	/* trim off any pages we don't actually require */
	for (loop = npages; loop < xpages; loop++)
		FUNC2(pages + loop);

	/* clear the memory we allocated */
	newsize = PAGE_SIZE * npages;
	data = FUNC10(pages);
	FUNC9(data, 0, newsize);

	/* attach all the pages to the inode's address space */
	for (loop = 0; loop < npages; loop++) {
		struct page *page = pages + loop;

		ret = FUNC3(page, inode->i_mapping, loop,
					gfp);
		if (ret < 0)
			goto add_error;

		/* prevent the page from being discarded on memory pressure */
		FUNC0(page);
		FUNC1(page);

		FUNC14(page);
		FUNC11(page);
	}

	return 0;

add_error:
	while (loop < npages)
		FUNC2(pages + loop++);
	return ret;
}