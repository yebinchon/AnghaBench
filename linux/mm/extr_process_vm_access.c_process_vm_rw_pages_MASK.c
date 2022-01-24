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
struct iov_iter {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 unsigned int PAGE_SIZE ; 
 size_t FUNC0 (struct page*,unsigned int,size_t,struct iov_iter*) ; 
 size_t FUNC1 (struct page*,unsigned int,size_t,struct iov_iter*) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct page **pages,
			       unsigned offset,
			       size_t len,
			       struct iov_iter *iter,
			       int vm_write)
{
	/* Do the copy for each page */
	while (len && FUNC2(iter)) {
		struct page *page = *pages++;
		size_t copy = PAGE_SIZE - offset;
		size_t copied;

		if (copy > len)
			copy = len;

		if (vm_write) {
			copied = FUNC0(page, offset, copy, iter);
			FUNC3(page);
		} else {
			copied = FUNC1(page, offset, copy, iter);
		}
		len -= copied;
		if (copied < copy && FUNC2(iter))
			return -EFAULT;
		offset = 0;
	}
	return 0;
}