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
struct file {int dummy; } ;
typedef  unsigned long loff_t ;

/* Variables and functions */
 unsigned long ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 struct inode* FUNC0 (struct file*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long*,unsigned long,struct page**) ; 
 unsigned long FUNC2 (struct inode*) ; 
 struct page** FUNC3 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page**) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC7(struct file *file,
					    unsigned long addr, unsigned long len,
					    unsigned long pgoff, unsigned long flags)
{
	unsigned long maxpages, lpages, nr, loop, ret;
	struct inode *inode = FUNC0(file);
	struct page **pages = NULL, **ptr, *page;
	loff_t isize;

	/* the mapping mustn't extend beyond the EOF */
	lpages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
	isize = FUNC2(inode);

	ret = -ENOSYS;
	maxpages = (isize + PAGE_SIZE - 1) >> PAGE_SHIFT;
	if (pgoff >= maxpages)
		goto out;

	if (maxpages - pgoff < lpages)
		goto out;

	/* gang-find the pages */
	pages = FUNC3(lpages, sizeof(struct page *), GFP_KERNEL);
	if (!pages)
		goto out_free;

	nr = FUNC1(inode->i_mapping, &pgoff, lpages, pages);
	if (nr != lpages)
		goto out_free_pages; /* leave if some pages were missing */

	/* check the pages for physical adjacency */
	ptr = pages;
	page = *ptr++;
	page++;
	for (loop = lpages; loop > 1; loop--)
		if (*ptr++ != page++)
			goto out_free_pages;

	/* okay - all conditions fulfilled */
	ret = (unsigned long) FUNC5(pages[0]);

out_free_pages:
	ptr = pages;
	for (loop = nr; loop > 0; loop--)
		FUNC6(*ptr++);
out_free:
	FUNC4(pages);
out:
	return ret;
}