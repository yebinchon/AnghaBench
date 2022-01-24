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
struct perf_cpu_map {int nr; int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 unsigned long* FUNC0 (int) ; 
 struct perf_cpu_map* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static unsigned long *FUNC4(const char *str, int nbits)
{
	struct perf_cpu_map *map = FUNC1(str);
	unsigned long *bm = NULL;
	int i;

	bm = FUNC0(nbits);

	if (map && bm) {
		for (i = 0; i < map->nr; i++)
			FUNC3(map->map[i], bm);
	}

	if (map)
		FUNC2(map);
	return bm;
}