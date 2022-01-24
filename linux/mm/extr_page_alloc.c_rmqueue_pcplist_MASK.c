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
struct zone {int /*<<< orphan*/  pageset; } ;
struct per_cpu_pages {struct list_head* lists; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct per_cpu_pages pcp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC1 (struct zone*,int,unsigned int,struct per_cpu_pages*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zone*,struct zone*) ; 

__attribute__((used)) static struct page *FUNC7(struct zone *preferred_zone,
			struct zone *zone, gfp_t gfp_flags,
			int migratetype, unsigned int alloc_flags)
{
	struct per_cpu_pages *pcp;
	struct list_head *list;
	struct page *page;
	unsigned long flags;

	FUNC3(flags);
	pcp = &FUNC5(zone->pageset)->pcp;
	list = &pcp->lists[migratetype];
	page = FUNC1(zone,  migratetype, alloc_flags, pcp, list);
	if (page) {
		FUNC0(PGALLOC, FUNC4(page), 1);
		FUNC6(preferred_zone, zone);
	}
	FUNC2(flags);
	return page;
}