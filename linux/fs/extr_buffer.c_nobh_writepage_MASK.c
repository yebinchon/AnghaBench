#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct page {scalar_t__ const index; TYPE_2__* mapping; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;
struct TYPE_4__ {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* invalidatepage ) (struct page*,unsigned int) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct inode* const,struct page*,int /*<<< orphan*/ *,struct writeback_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  end_buffer_async_write ; 
 int FUNC1 (struct inode* const) ; 
 int FUNC2 (struct page*,int /*<<< orphan*/ *,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int,int) ; 

int FUNC6(struct page *page, get_block_t *get_block,
			struct writeback_control *wbc)
{
	struct inode * const inode = page->mapping->host;
	loff_t i_size = FUNC1(inode);
	const pgoff_t end_index = i_size >> PAGE_SHIFT;
	unsigned offset;
	int ret;

	/* Is the page fully inside i_size? */
	if (page->index < end_index)
		goto out;

	/* Is the page fully outside i_size? (truncate in progress) */
	offset = i_size & (PAGE_SIZE-1);
	if (page->index >= end_index+1 || !offset) {
		/*
		 * The page may have dirty, unmapped buffers.  For example,
		 * they may have been added in ext3_writepage().  Make them
		 * freeable here, so the page does not leak.
		 */
#if 0
		/* Not really sure about this  - do we need this ? */
		if (page->mapping->a_ops->invalidatepage)
			page->mapping->a_ops->invalidatepage(page, offset);
#endif
		FUNC4(page);
		return 0; /* don't care */
	}

	/*
	 * The page straddles i_size.  It must be zeroed out on each and every
	 * writepage invocation because it may be mmapped.  "A file is mapped
	 * in multiples of the page size.  For a file that is not a multiple of
	 * the  page size, the remaining memory is zeroed when mapped, and
	 * writes to that region are not written out to the file."
	 */
	FUNC5(page, offset, PAGE_SIZE);
out:
	ret = FUNC2(page, get_block, wbc);
	if (ret == -EAGAIN)
		ret = FUNC0(inode, page, get_block, wbc,
					      end_buffer_async_write);
	return ret;
}