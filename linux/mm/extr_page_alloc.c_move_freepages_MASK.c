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
struct zone {int /*<<< orphan*/ * free_area; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct zone* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct zone*) ; 

__attribute__((used)) static int FUNC11(struct zone *zone,
			  struct page *start_page, struct page *end_page,
			  int migratetype, int *num_movable)
{
	struct page *page;
	unsigned int order;
	int pages_moved = 0;

	for (page = start_page; page <= end_page;) {
		if (!FUNC9(FUNC7(page))) {
			page++;
			continue;
		}

		if (!FUNC0(page)) {
			/*
			 * We assume that pages that could be isolated for
			 * migration are movable. But we don't actually try
			 * isolating, as that would be expensive.
			 */
			if (num_movable &&
					(FUNC1(page) || FUNC3(page)))
				(*num_movable)++;

			page++;
			continue;
		}

		/* Make sure we are not inadvertently changing nodes */
		FUNC2(FUNC6(page) != FUNC10(zone), page);
		FUNC2(FUNC8(page) != zone, page);

		order = FUNC5(page);
		FUNC4(page, &zone->free_area[order], migratetype);
		page += 1 << order;
		pages_moved += 1 << order;
	}

	return pages_moved;
}