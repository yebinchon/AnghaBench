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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  prev; int /*<<< orphan*/  overwrite; } ;
struct mmap {TYPE_1__ core; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmap*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mmap *map)
{
	if (!map->core.overwrite) {
		u64 old = map->core.prev;

		FUNC2(map, old);
	}

	if (FUNC3(&map->core.refcnt) == 1 && FUNC0(map))
		FUNC1(map);
}