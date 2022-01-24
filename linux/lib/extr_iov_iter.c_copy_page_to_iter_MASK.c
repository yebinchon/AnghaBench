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
struct iov_iter {int type; } ;

/* Variables and functions */
 int ITER_BVEC ; 
 int ITER_KVEC ; 
 size_t FUNC0 (struct page*,size_t,size_t,struct iov_iter*) ; 
 size_t FUNC1 (struct page*,size_t,size_t,struct iov_iter*) ; 
 size_t FUNC2 (void*,size_t,struct iov_iter*) ; 
 int FUNC3 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,size_t,size_t) ; 
 scalar_t__ FUNC9 (int) ; 

size_t FUNC10(struct page *page, size_t offset, size_t bytes,
			 struct iov_iter *i)
{
	if (FUNC9(!FUNC8(page, offset, bytes)))
		return 0;
	if (i->type & (ITER_BVEC|ITER_KVEC)) {
		void *kaddr = FUNC5(page);
		size_t wanted = FUNC2(kaddr + offset, bytes, i);
		FUNC6(kaddr);
		return wanted;
	} else if (FUNC9(FUNC3(i)))
		return bytes;
	else if (FUNC7(!FUNC4(i)))
		return FUNC0(page, offset, bytes, i);
	else
		return FUNC1(page, offset, bytes, i);
}