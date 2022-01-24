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
struct tracing_map {unsigned int max_elts; int /*<<< orphan*/ * elts; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tracing_map *map)
{
	unsigned int i;

	if (!map->elts)
		return;

	for (i = 0; i < map->max_elts; i++) {
		FUNC2(*(FUNC0(map->elts, i)));
		*(FUNC0(map->elts, i)) = NULL;
	}

	FUNC1(map->elts);
	map->elts = NULL;
}