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
struct page {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lru_lock; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 TYPE_1__* FUNC2 (struct page*) ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct page *FUNC9(unsigned long pfn)
{
	struct page *page;
	pg_data_t *pgdat;

	if (!FUNC4(pfn))
		return NULL;

	page = FUNC3(pfn);
	if (!page || !FUNC0(page) ||
	    !FUNC1(page))
		return NULL;

	pgdat = FUNC2(page);
	FUNC6(&pgdat->lru_lock);
	if (FUNC8(!FUNC0(page))) {
		FUNC5(page);
		page = NULL;
	}
	FUNC7(&pgdat->lru_lock);
	return page;
}