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
struct map {int /*<<< orphan*/  dso; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 struct dso* FUNC0 (int /*<<< orphan*/ ) ; 
 struct map* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (struct map*) ; 
 int /*<<< orphan*/  FUNC3 (struct map*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static struct dso *FUNC5(const char *name)
{
	struct map *map;
	struct dso *dso;

	map = FUNC1(name);
	if (!map)
		return NULL;

	if (FUNC2(map) < 0)
		FUNC4("File '%s' not found or has no symbols.\n", name);

	dso = FUNC0(map->dso);

	FUNC3(map);

	return dso;
}