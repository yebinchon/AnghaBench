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
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int,int) ; 

void FUNC3(int off, int len, struct page **pages)
{
	int i = off >> PAGE_SHIFT;

	off &= ~PAGE_MASK;

	FUNC0("zero_page_vector_page %u~%u\n", off, len);

	/* leading partial page? */
	if (off) {
		int end = FUNC1((int)PAGE_SIZE, off + len);
		FUNC0("zeroing %d %p head from %d\n", i, pages[i],
		     (int)off);
		FUNC2(pages[i], off, end);
		len -= (end - off);
		i++;
	}
	while (len >= PAGE_SIZE) {
		FUNC0("zeroing %d %p len=%d\n", i, pages[i], len);
		FUNC2(pages[i], 0, PAGE_SIZE);
		len -= PAGE_SIZE;
		i++;
	}
	/* trailing partial page? */
	if (len) {
		FUNC0("zeroing %d %p tail to %d\n", i, pages[i], (int)len);
		FUNC2(pages[i], 0, len);
	}
}