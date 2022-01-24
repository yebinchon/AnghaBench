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
struct tracing_map_elt {int dummy; } ;
struct tracing_map {unsigned int max_elts; int /*<<< orphan*/  elts; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct tracing_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct tracing_map*) ; 

__attribute__((used)) static int FUNC5(struct tracing_map *map)
{
	unsigned int i;

	map->elts = FUNC2(map->max_elts,
					    sizeof(struct tracing_map_elt *));
	if (!map->elts)
		return -ENOMEM;

	for (i = 0; i < map->max_elts; i++) {
		*(FUNC1(map->elts, i)) = FUNC3(map);
		if (FUNC0(*(FUNC1(map->elts, i)))) {
			*(FUNC1(map->elts, i)) = NULL;
			FUNC4(map);

			return -ENOMEM;
		}
	}

	return 0;
}