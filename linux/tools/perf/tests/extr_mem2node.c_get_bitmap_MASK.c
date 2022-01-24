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
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 struct perf_cpu_map* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static unsigned long *FUNC5(const char *str, int nbits)
{
	struct perf_cpu_map *map = FUNC2(str);
	unsigned long *bm = NULL;
	int i;

	bm = FUNC0(nbits);

	if (map && bm) {
		for (i = 0; i < map->nr; i++) {
			FUNC4(map->map[i], bm);
		}
	}

	if (map)
		FUNC3(map);
	else
		FUNC1(bm);

	return bm && map ? bm : NULL;
}