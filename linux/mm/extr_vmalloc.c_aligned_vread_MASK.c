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
 unsigned long PAGE_SIZE ; 
 void* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC4 (char*) ; 
 struct page* FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(char *buf, char *addr, unsigned long count)
{
	struct page *p;
	int copied = 0;

	while (count) {
		unsigned long offset, length;

		offset = FUNC4(addr);
		length = PAGE_SIZE - offset;
		if (length > count)
			length = count;
		p = FUNC5(addr);
		/*
		 * To do safe access to this _mapped_ area, we need
		 * lock. But adding lock here means that we need to add
		 * overhead of vmalloc()/vfree() calles for this _debug_
		 * interface, rarely used. Instead of that, we'll use
		 * kmap() and get small overhead in this access function.
		 */
		if (p) {
			/*
			 * we can expect USER0 is not used (see vread/vwrite's
			 * function description)
			 */
			void *map = FUNC0(p);
			FUNC2(buf, map + offset, length);
			FUNC1(map);
		} else
			FUNC3(buf, 0, length);

		addr += length;
		buf += length;
		copied += length;
		count -= length;
	}
	return copied;
}