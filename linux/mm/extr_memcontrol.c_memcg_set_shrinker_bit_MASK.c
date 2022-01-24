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
struct memcg_shrinker_map {int /*<<< orphan*/  map; } ;
struct mem_cgroup {TYPE_1__** nodeinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  shrinker_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*) ; 
 struct memcg_shrinker_map* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct mem_cgroup *memcg, int nid, int shrinker_id)
{
	if (shrinker_id >= 0 && memcg && !FUNC0(memcg)) {
		struct memcg_shrinker_map *map;

		FUNC2();
		map = FUNC1(memcg->nodeinfo[nid]->shrinker_map);
		/* Pairs with smp mb in shrink_slab() */
		FUNC5();
		FUNC4(shrinker_id, map->map);
		FUNC3();
	}
}