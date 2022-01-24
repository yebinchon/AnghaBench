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
struct map {int /*<<< orphan*/ * groups; int /*<<< orphan*/  dso; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct map* FUNC2 (struct map*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

struct map *FUNC4(struct map *from)
{
	struct map *map = FUNC2(from, sizeof(*map));

	if (map != NULL) {
		FUNC3(&map->refcnt, 1);
		FUNC0(&map->rb_node);
		FUNC1(map->dso);
		map->groups = NULL;
	}

	return map;
}