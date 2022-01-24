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

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 void* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(void *res, unsigned long addr, size_t size)
{
	unsigned long pfn;
	void *vaddr;
	struct page *page;

	pfn = (addr >> PAGE_SHIFT);
	if (!FUNC4(pfn))
		return 1;
	page = FUNC3(pfn);
	vaddr = FUNC0(page);
	FUNC2(res, vaddr + (addr & (PAGE_SIZE - 1)), size);
	FUNC1(vaddr);

	return 0;
}