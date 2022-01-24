#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct iov_iter {TYPE_1__* pipe; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int curbuf; int buffers; } ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 size_t EFAULT ; 
 size_t ENOMEM ; 
 int PAGE_SIZE ; 
 size_t FUNC1 (struct iov_iter*,size_t,struct page**,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*,int*,size_t*) ; 
 struct page** FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct page**) ; 
 int /*<<< orphan*/  FUNC5 (struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC6(struct iov_iter *i,
		   struct page ***pages, size_t maxsize,
		   size_t *start)
{
	struct page **p;
	ssize_t n;
	int idx;
	int npages;

	if (!maxsize)
		return 0;

	if (!FUNC5(i))
		return -EFAULT;

	FUNC2(i, &idx, start);
	/* some of this one + all after this one */
	npages = ((i->pipe->curbuf - idx - 1) & (i->pipe->buffers - 1)) + 1;
	n = npages * PAGE_SIZE - *start;
	if (maxsize > n)
		maxsize = n;
	else
		npages = FUNC0(maxsize + *start, PAGE_SIZE);
	p = FUNC3(npages);
	if (!p)
		return -ENOMEM;
	n = FUNC1(i, maxsize, p, idx, start);
	if (n > 0)
		*pages = p;
	else
		FUNC4(p);
	return n;
}