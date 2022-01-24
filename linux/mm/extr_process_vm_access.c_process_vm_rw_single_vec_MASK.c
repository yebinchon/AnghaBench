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
struct task_struct {int dummy; } ;
struct pages {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct iov_iter {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EFAULT ; 
 unsigned int FOLL_WRITE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 int PVM_MAX_KMALLOC_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct task_struct*,struct mm_struct*,unsigned long,int,unsigned int,struct page**,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 int FUNC3 (unsigned long,unsigned long) ; 
 int FUNC4 (struct page**,unsigned long,size_t,struct iov_iter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(unsigned long addr,
				    unsigned long len,
				    struct iov_iter *iter,
				    struct page **process_pages,
				    struct mm_struct *mm,
				    struct task_struct *task,
				    int vm_write)
{
	unsigned long pa = addr & PAGE_MASK;
	unsigned long start_offset = addr - pa;
	unsigned long nr_pages;
	ssize_t rc = 0;
	unsigned long max_pages_per_loop = PVM_MAX_KMALLOC_PAGES
		/ sizeof(struct pages *);
	unsigned int flags = 0;

	/* Work out address and page range required */
	if (len == 0)
		return 0;
	nr_pages = (addr + len - 1) / PAGE_SIZE - addr / PAGE_SIZE + 1;

	if (vm_write)
		flags |= FOLL_WRITE;

	while (!rc && nr_pages && FUNC2(iter)) {
		int pages = FUNC3(nr_pages, max_pages_per_loop);
		int locked = 1;
		size_t bytes;

		/*
		 * Get the pages we're interested in.  We must
		 * access remotely because task/mm might not
		 * current/current->mm
		 */
		FUNC0(&mm->mmap_sem);
		pages = FUNC1(task, mm, pa, pages, flags,
					      process_pages, NULL, &locked);
		if (locked)
			FUNC6(&mm->mmap_sem);
		if (pages <= 0)
			return -EFAULT;

		bytes = pages * PAGE_SIZE - start_offset;
		if (bytes > len)
			bytes = len;

		rc = FUNC4(process_pages,
					 start_offset, bytes, iter,
					 vm_write);
		len -= bytes;
		start_offset = 0;
		nr_pages -= pages;
		pa += pages * PAGE_SIZE;
		while (pages)
			FUNC5(process_pages[--pages]);
	}

	return rc;
}