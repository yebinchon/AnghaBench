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
struct page {unsigned long index; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct buffer_head {int b_size; struct page* b_page; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct page*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct page*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				 struct buffer_head *bh_result,
				 loff_t tail_offset)
{
	unsigned long index;
	unsigned long tail_end;
	unsigned long tail_start;
	struct page *tail_page;
	struct page *hole_page = bh_result->b_page;
	int retval = 0;

	if ((tail_offset & (bh_result->b_size - 1)) != 1)
		return -EIO;

	/* always try to read until the end of the block */
	tail_start = tail_offset & (PAGE_SIZE - 1);
	tail_end = (tail_start | (bh_result->b_size - 1)) + 1;

	index = tail_offset >> PAGE_SHIFT;
	/*
	 * hole_page can be zero in case of direct_io, we are sure
	 * that we cannot get here if we write with O_DIRECT into tail page
	 */
	if (!hole_page || index != hole_page->index) {
		tail_page = FUNC3(inode->i_mapping, index);
		retval = -ENOMEM;
		if (!tail_page) {
			goto out;
		}
	} else {
		tail_page = hole_page;
	}

	/*
	 * we don't have to make sure the conversion did not happen while
	 * we were locking the page because anyone that could convert
	 * must first take i_mutex.
	 *
	 * We must fix the tail page for writing because it might have buffers
	 * that are mapped, but have a block number of 0.  This indicates tail
	 * data that has been read directly into the page, and
	 * __block_write_begin won't trigger a get_block in this case.
	 */
	FUNC1(tail_page);
	retval = FUNC0(tail_page, tail_start,
				      tail_end - tail_start);
	if (retval)
		goto unlock;

	/* tail conversion might change the data in the page */
	FUNC2(tail_page);

	retval = FUNC5(NULL, tail_page, tail_start, tail_end);

unlock:
	if (tail_page != hole_page) {
		FUNC6(tail_page);
		FUNC4(tail_page);
	}
out:
	return retval;
}