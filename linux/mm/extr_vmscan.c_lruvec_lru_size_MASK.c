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
struct zone {int dummy; } ;
struct lruvec {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;
struct TYPE_3__ {struct zone* node_zones; } ;

/* Variables and functions */
 int MAX_NR_ZONES ; 
 int NR_LRU_BASE ; 
 int NR_ZONE_LRU_BASE ; 
 TYPE_1__* FUNC0 (struct lruvec*) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (struct lruvec*,int,int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 unsigned long FUNC5 (TYPE_1__*,int) ; 
 unsigned long FUNC6 (struct zone*,int) ; 

unsigned long FUNC7(struct lruvec *lruvec, enum lru_list lru, int zone_idx)
{
	unsigned long lru_size = 0;
	int zid;

	if (!FUNC2()) {
		for (zid = 0; zid < MAX_NR_ZONES; zid++)
			lru_size += FUNC3(lruvec, lru, zid);
	} else
		lru_size = FUNC5(FUNC0(lruvec), NR_LRU_BASE + lru);

	for (zid = zone_idx + 1; zid < MAX_NR_ZONES; zid++) {
		struct zone *zone = &FUNC0(lruvec)->node_zones[zid];
		unsigned long size;

		if (!FUNC1(zone))
			continue;

		if (!FUNC2())
			size = FUNC3(lruvec, lru, zid);
		else
			size = FUNC6(&FUNC0(lruvec)->node_zones[zid],
				       NR_ZONE_LRU_BASE + lru);
		lru_size -= FUNC4(size, lru_size);
	}

	return lru_size;

}