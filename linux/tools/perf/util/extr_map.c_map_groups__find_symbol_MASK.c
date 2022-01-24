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
typedef  int /*<<< orphan*/  u64 ;
struct symbol {int dummy; } ;
struct map_groups {int dummy; } ;
struct map {int /*<<< orphan*/  (* map_ip ) (struct map*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct symbol* FUNC0 (struct map*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct map*) ; 
 struct map* FUNC2 (struct map_groups*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct map*,int /*<<< orphan*/ ) ; 

struct symbol *FUNC4(struct map_groups *mg,
				       u64 addr, struct map **mapp)
{
	struct map *map = FUNC2(mg, addr);

	/* Ensure map is loaded before using map->map_ip */
	if (map != NULL && FUNC1(map) >= 0) {
		if (mapp != NULL)
			*mapp = map;
		return FUNC0(map, map->map_ip(map, addr));
	}

	return NULL;
}