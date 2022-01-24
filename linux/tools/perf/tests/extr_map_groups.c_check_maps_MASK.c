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
struct map_groups {int dummy; } ;
struct map_def {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  name; } ;
struct map {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  refcnt; TYPE_1__* dso; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int TEST_OK ; 
 struct map* FUNC1 (struct map_groups*) ; 
 struct map* FUNC2 (struct map*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct map_def *merged, unsigned int size, struct map_groups *mg)
{
	struct map *map;
	unsigned int i = 0;

	map = FUNC1(mg);
	while (map) {
		FUNC0("wrong map start",  map->start == merged[i].start);
		FUNC0("wrong map end",    map->end == merged[i].end);
		FUNC0("wrong map name",  !FUNC4(map->dso->name, merged[i].name));
		FUNC0("wrong map refcnt", FUNC3(&map->refcnt) == 2);

		i++;
		map = FUNC2(map);

		FUNC0("less maps expected", (map && i < size) || (!map && i == size));
	}

	return TEST_OK;
}