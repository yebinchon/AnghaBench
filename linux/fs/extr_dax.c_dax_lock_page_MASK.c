#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  index; struct address_space* mapping; } ;
struct address_space {int /*<<< orphan*/  i_pages; TYPE_1__* host; } ;
typedef  int /*<<< orphan*/  dax_entry_t ;
struct TYPE_11__ {int /*<<< orphan*/ * xa; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 struct address_space* FUNC0 (struct address_space*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*) ; 
 TYPE_2__ xas ; 
 void* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

dax_entry_t FUNC13(struct page *page)
{
	FUNC2(xas, NULL, 0);
	void *entry;

	/* Ensure page->mapping isn't freed while we look at it */
	FUNC6();
	for (;;) {
		struct address_space *mapping = FUNC0(page->mapping);

		entry = NULL;
		if (!mapping || !FUNC5(mapping))
			break;

		/*
		 * In the device-dax case there's no need to lock, a
		 * struct dev_pagemap pin is sufficient to keep the
		 * inode alive, and we assume we have dev_pagemap pin
		 * otherwise we would not have a valid pfn_to_page()
		 * translation.
		 */
		entry = (void *)~0UL;
		if (FUNC1(mapping->host->i_mode))
			break;

		xas.xa = &mapping->i_pages;
		FUNC10(&xas);
		if (mapping != page->mapping) {
			FUNC12(&xas);
			continue;
		}
		FUNC11(&xas, page->index);
		entry = FUNC9(&xas);
		if (FUNC3(entry)) {
			FUNC7();
			FUNC8(&xas, entry);
			FUNC6();
			continue;
		}
		FUNC4(&xas, entry);
		FUNC12(&xas);
		break;
	}
	FUNC7();
	return (dax_entry_t)entry;
}