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
struct resv_map {int region_cache_count; int /*<<< orphan*/  region_cache; int /*<<< orphan*/  link; scalar_t__ adds_in_progress; int /*<<< orphan*/  regions; int /*<<< orphan*/  lock; int /*<<< orphan*/  refs; } ;
struct file_region {int region_cache_count; int /*<<< orphan*/  region_cache; int /*<<< orphan*/  link; scalar_t__ adds_in_progress; int /*<<< orphan*/  regions; int /*<<< orphan*/  lock; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct resv_map*) ; 
 struct resv_map* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct resv_map *FUNC6(void)
{
	struct resv_map *resv_map = FUNC2(sizeof(*resv_map), GFP_KERNEL);
	struct file_region *rg = FUNC2(sizeof(*rg), GFP_KERNEL);

	if (!resv_map || !rg) {
		FUNC1(resv_map);
		FUNC1(rg);
		return NULL;
	}

	FUNC3(&resv_map->refs);
	FUNC5(&resv_map->lock);
	FUNC0(&resv_map->regions);

	resv_map->adds_in_progress = 0;

	FUNC0(&resv_map->region_cache);
	FUNC4(&rg->link, &resv_map->region_cache);
	resv_map->region_cache_count = 1;

	return resv_map;
}