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
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,unsigned long) ; 
 struct page* FUNC5 (void*) ; 

unsigned long FUNC6(void *start, void *end, int poison, const char *s)
{
	void *pos;
	unsigned long pages = 0;

	start = (void *)FUNC0((unsigned long)start);
	end = (void *)((unsigned long)end & PAGE_MASK);
	for (pos = start; pos < end; pos += PAGE_SIZE, pages++) {
		struct page *page = FUNC5(pos);
		void *direct_map_addr;

		/*
		 * 'direct_map_addr' might be different from 'pos'
		 * because some architectures' virt_to_page()
		 * work with aliases.  Getting the direct map
		 * address ensures that we get a _writeable_
		 * alias for the memset().
		 */
		direct_map_addr = FUNC3(page);
		if ((unsigned int)poison <= 0xFF)
			FUNC2(direct_map_addr, poison, PAGE_SIZE);

		FUNC1(page);
	}

	if (pages && s)
		FUNC4("Freeing %s memory: %ldK\n",
			s, pages << (PAGE_SHIFT - 10));

	return pages;
}