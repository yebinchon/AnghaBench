#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {void* mapping; } ;
typedef  void address_space ;

/* Variables and functions */
 unsigned long PAGE_MAPPING_ANON ; 
 unsigned long PAGE_MAPPING_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 void* FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

struct address_space *FUNC6(struct page *page)
{
	struct address_space *mapping;

	page = FUNC2(page);

	/* This happens if someone calls flush_dcache_page on slab page */
	if (FUNC5(FUNC0(page)))
		return NULL;

	if (FUNC5(FUNC1(page))) {
		swp_entry_t entry;

		entry.val = FUNC3(page);
		return FUNC4(entry);
	}

	mapping = page->mapping;
	if ((unsigned long)mapping & PAGE_MAPPING_ANON)
		return NULL;

	return (void *)((unsigned long)mapping & ~PAGE_MAPPING_FLAGS);
}