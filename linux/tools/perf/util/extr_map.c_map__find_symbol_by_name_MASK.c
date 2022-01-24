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
struct symbol {int dummy; } ;
struct map {int /*<<< orphan*/  dso; } ;

/* Variables and functions */
 struct symbol* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct map*) ; 

struct symbol *FUNC4(struct map *map, const char *name)
{
	if (FUNC3(map) < 0)
		return NULL;

	if (!FUNC2(map->dso))
		FUNC1(map->dso);

	return FUNC0(map->dso, name);
}