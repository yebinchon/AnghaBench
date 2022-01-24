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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TEST_PAGES_PER_LOOP ; 
 int guest_num_pages ; 
 int guest_page_size ; 
 int guest_test_virt_mem ; 
 int host_page_size ; 
 int /*<<< orphan*/  iteration ; 
 int /*<<< orphan*/ * random_array ; 

__attribute__((used)) static void FUNC2(void)
{
	uint64_t addr;
	int i;

	/*
	 * On s390x, all pages of a 1M segment are initially marked as dirty
	 * when a page of the segment is written to for the very first time.
	 * To compensate this specialty in this test, we need to touch all
	 * pages during the first iteration.
	 */
	for (i = 0; i < guest_num_pages; i++) {
		addr = guest_test_virt_mem + i * guest_page_size;
		*(uint64_t *)addr = FUNC1(iteration);
	}

	while (true) {
		for (i = 0; i < TEST_PAGES_PER_LOOP; i++) {
			addr = guest_test_virt_mem;
			addr += (FUNC1(random_array[i]) % guest_num_pages)
				* guest_page_size;
			addr &= ~(host_page_size - 1);
			*(uint64_t *)addr = FUNC1(iteration);
		}

		/* Tell the host that we need more random numbers */
		FUNC0(1);
	}
}