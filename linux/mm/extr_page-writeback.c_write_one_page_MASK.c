#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int nr_to_write; int /*<<< orphan*/  sync_mode; } ;
struct page {struct address_space* mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* writepage ) (struct page*,struct writeback_control*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

int FUNC9(struct page *page)
{
	struct address_space *mapping = page->mapping;
	int ret = 0;
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_ALL,
		.nr_to_write = 1,
	};

	FUNC0(!FUNC1(page));

	FUNC8(page);

	if (FUNC2(page)) {
		FUNC4(page);
		ret = mapping->a_ops->writepage(page, &wbc);
		if (ret == 0)
			FUNC8(page);
		FUNC5(page);
	} else {
		FUNC7(page);
	}

	if (!ret)
		ret = FUNC3(mapping);
	return ret;
}