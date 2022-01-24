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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 unsigned char FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct address_space*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (struct address_space*,int /*<<< orphan*/ ) ; 
 struct swap_info_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct swap_info_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct address_space*) ; 
 struct address_space* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct page*) ; 

__attribute__((used)) static unsigned char FUNC11(struct address_space *mapping, pgoff_t pgoff)
{
	unsigned char present = 0;
	struct page *page;

	/*
	 * When tmpfs swaps out a page from a file, any process mapping that
	 * file will not get a swp_entry_t in its pte, but rather it is like
	 * any other file mapping (ie. marked !present and faulted in with
	 * tmpfs's .fault). So swapped out tmpfs mappings are tested here.
	 */
#ifdef CONFIG_SWAP
	if (shmem_mapping(mapping)) {
		page = find_get_entry(mapping, pgoff);
		/*
		 * shmem/tmpfs may return swap: account for swapcache
		 * page too.
		 */
		if (xa_is_value(page)) {
			swp_entry_t swp = radix_to_swp_entry(page);
			struct swap_info_struct *si;

			/* Prevent swap device to being swapoff under us */
			si = get_swap_device(swp);
			if (si) {
				page = find_get_page(swap_address_space(swp),
						     swp_offset(swp));
				put_swap_device(si);
			} else
				page = NULL;
		}
	} else
		page = find_get_page(mapping, pgoff);
#else
	page = FUNC2(mapping, pgoff);
#endif
	if (page) {
		present = FUNC0(page);
		FUNC4(page);
	}

	return present;
}