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
struct tracing_map {unsigned int max_elts; int /*<<< orphan*/  elts; int /*<<< orphan*/  map; int /*<<< orphan*/  drops; int /*<<< orphan*/  hits; int /*<<< orphan*/  next_elt; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct tracing_map *map)
{
	unsigned int i;

	FUNC2(&map->next_elt, -1);
	FUNC1(&map->hits, 0);
	FUNC1(&map->drops, 0);

	FUNC3(map->map);

	for (i = 0; i < map->max_elts; i++)
		FUNC4(*(FUNC0(map->elts, i)));
}