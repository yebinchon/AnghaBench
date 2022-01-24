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
struct nsinfo {int dummy; } ;
struct map {TYPE_1__* dso; } ;
struct TYPE_2__ {int /*<<< orphan*/  nsinfo; } ;

/* Variables and functions */
 struct map* FUNC0 (char const*) ; 
 struct map* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nsinfo*) ; 

struct map *FUNC3(const char *target, struct nsinfo *nsi, bool user)
{
	/* Init maps of given executable or kernel */
	if (user) {
		struct map *map;

		map = FUNC0(target);
		if (map && map->dso)
			map->dso->nsinfo = FUNC2(nsi);
		return map;
	} else {
		return FUNC1(target);
	}
}