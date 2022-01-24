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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ KASAN_SHADOW_START ; 
 scalar_t__ KASAN_TAG_KERNEL ; 
 scalar_t__ FUNC0 (void const*) ; 
 scalar_t__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,size_t,int,unsigned long) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (void const*) ; 
 scalar_t__ FUNC5 (int) ; 

bool FUNC6(unsigned long addr, size_t size, bool write,
				unsigned long ret_ip)
{
	u8 tag;
	u8 *shadow_first, *shadow_last, *shadow;
	void *untagged_addr;

	if (FUNC5(size == 0))
		return true;

	tag = FUNC0((const void *)addr);

	/*
	 * Ignore accesses for pointers tagged with 0xff (native kernel
	 * pointer tag) to suppress false positives caused by kmap.
	 *
	 * Some kernel code was written to account for archs that don't keep
	 * high memory mapped all the time, but rather map and unmap particular
	 * pages when needed. Instead of storing a pointer to the kernel memory,
	 * this code saves the address of the page structure and offset within
	 * that page for later use. Those pages are then mapped and unmapped
	 * with kmap/kunmap when necessary and virt_to_page is used to get the
	 * virtual address of the page. For arm64 (that keeps the high memory
	 * mapped all the time), kmap is turned into a page_address call.

	 * The issue is that with use of the page_address + virt_to_page
	 * sequence the top byte value of the original pointer gets lost (gets
	 * set to KASAN_TAG_KERNEL (0xFF)).
	 */
	if (tag == KASAN_TAG_KERNEL)
		return true;

	untagged_addr = FUNC4((const void *)addr);
	if (FUNC5(untagged_addr <
			FUNC3((void *)KASAN_SHADOW_START))) {
		FUNC2(addr, size, write, ret_ip);
		return false;
	}
	shadow_first = FUNC1(untagged_addr);
	shadow_last = FUNC1(untagged_addr + size - 1);
	for (shadow = shadow_first; shadow <= shadow_last; shadow++) {
		if (*shadow != tag) {
			FUNC2(addr, size, write, ret_ip);
			return false;
		}
	}

	return true;
}