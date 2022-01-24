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
struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ ENOENT ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int SEEK_HOLE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct inode*,struct page*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*) ; 
 unsigned int FUNC4 (struct pagevec*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*) ; 

__attribute__((used)) static loff_t
FUNC6(struct inode *inode, loff_t offset, loff_t length,
		int whence)
{
	pgoff_t index = offset >> PAGE_SHIFT;
	pgoff_t end = FUNC0(offset + length, PAGE_SIZE);
	loff_t lastoff = offset;
	struct pagevec pvec;

	if (length <= 0)
		return -ENOENT;

	FUNC3(&pvec);

	do {
		unsigned nr_pages, i;

		nr_pages = FUNC4(&pvec, inode->i_mapping, &index,
						end - 1);
		if (nr_pages == 0)
			break;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			if (FUNC2(inode, page, &lastoff, whence))
				goto check_range;
			lastoff = FUNC1(page) + PAGE_SIZE;
		}
		FUNC5(&pvec);
	} while (index < end);

	/* When no page at lastoff and we are not done, we found a hole. */
	if (whence != SEEK_HOLE)
		goto not_found;

check_range:
	if (lastoff < offset + length)
		goto out;
not_found:
	lastoff = -ENOENT;
out:
	FUNC5(&pvec);
	return lastoff;
}