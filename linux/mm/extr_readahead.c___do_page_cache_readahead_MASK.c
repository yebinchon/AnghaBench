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
struct page {unsigned long index; int /*<<< orphan*/  lru; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; struct inode* host; } ;
typedef  unsigned long pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  page_pool ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*,struct file*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned int FUNC11(struct address_space *mapping,
		struct file *filp, pgoff_t offset, unsigned long nr_to_read,
		unsigned long lookahead_size)
{
	struct inode *inode = mapping->host;
	struct page *page;
	unsigned long end_index;	/* The last page we want to read */
	FUNC1(page_pool);
	int page_idx;
	unsigned int nr_pages = 0;
	loff_t isize = FUNC4(inode);
	gfp_t gfp_mask = FUNC8(mapping);

	if (isize == 0)
		goto out;

	end_index = ((isize - 1) >> PAGE_SHIFT);

	/*
	 * Preallocate as many pages as we will need.
	 */
	for (page_idx = 0; page_idx < nr_to_read; page_idx++) {
		pgoff_t page_offset = offset + page_idx;

		if (page_offset > end_index)
			break;

		page = FUNC10(&mapping->i_pages, page_offset);
		if (page && !FUNC9(page)) {
			/*
			 * Page already present?  Kick off the current batch of
			 * contiguous pages before continuing with the next
			 * batch.
			 */
			if (nr_pages)
				FUNC7(mapping, filp, &page_pool, nr_pages,
						gfp_mask);
			nr_pages = 0;
			continue;
		}

		page = FUNC3(gfp_mask);
		if (!page)
			break;
		page->index = page_offset;
		FUNC5(&page->lru, &page_pool);
		if (page_idx == nr_to_read - lookahead_size)
			FUNC2(page);
		nr_pages++;
	}

	/*
	 * Now start the IO.  We ignore I/O errors - if the page is not
	 * uptodate then the caller will launch readpage again, and
	 * will then handle the error.
	 */
	if (nr_pages)
		FUNC7(mapping, filp, &page_pool, nr_pages, gfp_mask);
	FUNC0(!FUNC6(&page_pool));
out:
	return nr_pages;
}