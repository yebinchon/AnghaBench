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
struct page {int /*<<< orphan*/ * mapping; } ;
struct kiocb {int ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int count; } ;
struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct file_ra_state {int prev_pos; } ;
struct file {struct file_ra_state f_ra; struct address_space* f_mapping; } ;
struct address_space {TYPE_2__* a_ops; struct inode* host; } ;
typedef  int ssize_t ;
typedef  unsigned long pgoff_t ;
typedef  int loff_t ;
struct TYPE_4__ {int (* readpage ) (struct file*,struct page*) ;int /*<<< orphan*/  (* is_partially_uptodate ) (struct page*,unsigned long,int) ;} ;
struct TYPE_3__ {int s_maxbytes; } ;

/* Variables and functions */
 int AOP_TRUNCATED_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EAGAIN ; 
 int EEXIST ; 
 int EFAULT ; 
 int EINTR ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOCB_NOWAIT ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (struct page*,unsigned long,unsigned long,struct iov_iter*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 struct page* FUNC8 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct iov_iter*) ; 
 int FUNC12 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC13 (struct iov_iter*,int) ; 
 int FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 struct page* FUNC18 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC19 (struct address_space*,struct file_ra_state*,struct file*,struct page*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct address_space*,struct file_ra_state*,struct file*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct file*,struct file_ra_state*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,unsigned long,int) ; 
 int FUNC24 (struct file*,struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int FUNC28 (struct page*) ; 

__attribute__((used)) static ssize_t FUNC29(struct kiocb *iocb,
		struct iov_iter *iter, ssize_t written)
{
	struct file *filp = iocb->ki_filp;
	struct address_space *mapping = filp->f_mapping;
	struct inode *inode = mapping->host;
	struct file_ra_state *ra = &filp->f_ra;
	loff_t *ppos = &iocb->ki_pos;
	pgoff_t index;
	pgoff_t last_index;
	pgoff_t prev_index;
	unsigned long offset;      /* offset into pagecache page */
	unsigned int prev_offset;
	int error = 0;

	if (FUNC26(*ppos >= inode->i_sb->s_maxbytes))
		return 0;
	FUNC13(iter, inode->i_sb->s_maxbytes);

	index = *ppos >> PAGE_SHIFT;
	prev_index = ra->prev_pos >> PAGE_SHIFT;
	prev_offset = ra->prev_pos & (PAGE_SIZE-1);
	last_index = (*ppos + iter->count + PAGE_SIZE-1) >> PAGE_SHIFT;
	offset = *ppos & ~PAGE_MASK;

	for (;;) {
		struct page *page;
		pgoff_t end_index;
		loff_t isize;
		unsigned long nr, ret;

		FUNC4();
find_page:
		if (FUNC6(current)) {
			error = -EINTR;
			goto out;
		}

		page = FUNC8(mapping, index);
		if (!page) {
			if (iocb->ki_flags & IOCB_NOWAIT)
				goto would_block;
			FUNC20(mapping,
					ra, filp,
					index, last_index - index);
			page = FUNC8(mapping, index);
			if (FUNC26(page == NULL))
				goto no_cached_page;
		}
		if (FUNC1(page)) {
			FUNC19(mapping,
					ra, filp, page,
					index, last_index - index);
		}
		if (!FUNC2(page)) {
			if (iocb->ki_flags & IOCB_NOWAIT) {
				FUNC21(page);
				goto would_block;
			}

			/*
			 * See comment in do_read_cache_page on why
			 * wait_on_page_locked is used to avoid unnecessarily
			 * serialisations and why it's safe.
			 */
			error = FUNC28(page);
			if (FUNC26(error))
				goto readpage_error;
			if (FUNC2(page))
				goto page_ok;

			if (inode->i_blkbits == PAGE_SHIFT ||
					!mapping->a_ops->is_partially_uptodate)
				goto page_not_up_to_date;
			/* pipes can't handle partially uptodate pages */
			if (FUNC26(FUNC12(iter)))
				goto page_not_up_to_date;
			if (!FUNC25(page))
				goto page_not_up_to_date;
			/* Did it get truncated before we got the lock? */
			if (!page->mapping)
				goto page_not_up_to_date_locked;
			if (!mapping->a_ops->is_partially_uptodate(page,
							offset, iter->count))
				goto page_not_up_to_date_locked;
			FUNC27(page);
		}
page_ok:
		/*
		 * i_size must be checked after we know the page is Uptodate.
		 *
		 * Checking i_size after the check allows us to calculate
		 * the correct value for "nr", which means the zero-filled
		 * part of the page is not copied back to userspace (unless
		 * another truncate extends the file - this is desired though).
		 */

		isize = FUNC10(inode);
		end_index = (isize - 1) >> PAGE_SHIFT;
		if (FUNC26(!isize || index > end_index)) {
			FUNC21(page);
			goto out;
		}

		/* nr is the maximum number of bytes to copy from this page */
		nr = PAGE_SIZE;
		if (index == end_index) {
			nr = ((isize - 1) & ~PAGE_MASK) + 1;
			if (nr <= offset) {
				FUNC21(page);
				goto out;
			}
		}
		nr = nr - offset;

		/* If users can be writing to this page using arbitrary
		 * virtual addresses, take care about potential aliasing
		 * before reading the page on the kernel side.
		 */
		if (FUNC16(mapping))
			FUNC9(page);

		/*
		 * When a sequential read accesses a page several times,
		 * only mark it as accessed the first time.
		 */
		if (prev_index != index || offset != prev_offset)
			FUNC17(page);
		prev_index = index;

		/*
		 * Ok, we have the page, and it's up-to-date, so
		 * now we can copy it to user space...
		 */

		ret = FUNC5(page, offset, nr, iter);
		offset += ret;
		index += offset >> PAGE_SHIFT;
		offset &= ~PAGE_MASK;
		prev_offset = offset;

		FUNC21(page);
		written += ret;
		if (!FUNC11(iter))
			goto out;
		if (ret < nr) {
			error = -EFAULT;
			goto out;
		}
		continue;

page_not_up_to_date:
		/* Get exclusive access to the page ... */
		error = FUNC14(page);
		if (FUNC26(error))
			goto readpage_error;

page_not_up_to_date_locked:
		/* Did it get truncated before we got the lock? */
		if (!page->mapping) {
			FUNC27(page);
			FUNC21(page);
			continue;
		}

		/* Did somebody else fill it already? */
		if (FUNC2(page)) {
			FUNC27(page);
			goto page_ok;
		}

readpage:
		/*
		 * A previous I/O error may have been due to temporary
		 * failures, eg. multipath errors.
		 * PG_error will be set again if readpage fails.
		 */
		FUNC0(page);
		/* Start the actual read. The read will unlock the page. */
		error = mapping->a_ops->readpage(filp, page);

		if (FUNC26(error)) {
			if (error == AOP_TRUNCATED_PAGE) {
				FUNC21(page);
				error = 0;
				goto find_page;
			}
			goto readpage_error;
		}

		if (!FUNC2(page)) {
			error = FUNC14(page);
			if (FUNC26(error))
				goto readpage_error;
			if (!FUNC2(page)) {
				if (page->mapping == NULL) {
					/*
					 * invalidate_mapping_pages got it
					 */
					FUNC27(page);
					FUNC21(page);
					goto find_page;
				}
				FUNC27(page);
				FUNC22(filp, ra);
				error = -EIO;
				goto readpage_error;
			}
			FUNC27(page);
		}

		goto page_ok;

readpage_error:
		/* UHHUH! A synchronous read error occurred. Report it */
		FUNC21(page);
		goto out;

no_cached_page:
		/*
		 * Ok, it wasn't cached, so we need to create a new
		 * page..
		 */
		page = FUNC18(mapping);
		if (!page) {
			error = -ENOMEM;
			goto out;
		}
		error = FUNC3(page, mapping, index,
				FUNC15(mapping, GFP_KERNEL));
		if (error) {
			FUNC21(page);
			if (error == -EEXIST) {
				error = 0;
				goto find_page;
			}
			goto out;
		}
		goto readpage;
	}

would_block:
	error = -EAGAIN;
out:
	ra->prev_pos = prev_index;
	ra->prev_pos <<= PAGE_SHIFT;
	ra->prev_pos |= prev_offset;

	*ppos = ((loff_t)index << PAGE_SHIFT) + offset;
	FUNC7(filp);
	return written ? written : error;
}