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
struct vm_area_struct {int dummy; } ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct page*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC6 (int,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct page* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct swap_info_struct* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct swap_info_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ swap_slot_cache_enabled ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

struct page *FUNC18(swp_entry_t entry, gfp_t gfp_mask,
			struct vm_area_struct *vma, unsigned long addr,
			bool *new_page_allocated)
{
	struct page *found_page = NULL, *new_page = NULL;
	struct swap_info_struct *si;
	int err;
	*new_page_allocated = false;

	do {
		/*
		 * First check the swap cache.  Since this is normally
		 * called after lookup_swap_cache() failed, re-calling
		 * that would confuse statistics.
		 */
		si = FUNC9(entry);
		if (!si)
			break;
		found_page = FUNC8(FUNC15(entry),
					   FUNC17(entry));
		FUNC13(si);
		if (found_page)
			break;

		/*
		 * Just skip read ahead for unused swap slot.
		 * During swap_off when swap_slot_cache is disabled,
		 * we have to handle the race between putting
		 * swap entry in swap cache and marking swap slot
		 * as SWAP_HAS_CACHE.  That's done in later part of code or
		 * else swap_off will be aborted if we return NULL.
		 */
		if (!FUNC4(entry) && swap_slot_cache_enabled)
			break;

		/*
		 * Get a new page to read into from swap.
		 */
		if (!new_page) {
			new_page = FUNC6(gfp_mask, vma, addr);
			if (!new_page)
				break;		/* Out of memory */
		}

		/*
		 * Swap entry may have been freed since our caller observed it.
		 */
		err = FUNC16(entry);
		if (err == -EEXIST) {
			/*
			 * We might race against get_swap_page() and stumble
			 * across a SWAP_HAS_CACHE swap_map entry whose page
			 * has not been brought into the swapcache yet.
			 */
			FUNC7();
			continue;
		} else if (err)		/* swp entry is obsolete ? */
			break;

		/* May fail (-ENOMEM) if XArray node allocation failed. */
		FUNC2(new_page);
		FUNC3(new_page);
		err = FUNC5(new_page, entry, gfp_mask & GFP_KERNEL);
		if (FUNC10(!err)) {
			/* Initiate read into locked page */
			FUNC0(new_page);
			FUNC11(new_page);
			*new_page_allocated = true;
			return new_page;
		}
		FUNC1(new_page);
		/*
		 * add_to_swap_cache() doesn't return -EEXIST, so we can safely
		 * clear SWAP_HAS_CACHE flag.
		 */
		FUNC14(new_page, entry);
	} while (err != -ENOMEM);

	if (new_page)
		FUNC12(new_page);
	return found_page;
}