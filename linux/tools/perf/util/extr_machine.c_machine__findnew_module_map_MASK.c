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
struct map {int /*<<< orphan*/  dso; } ;
struct machine {int /*<<< orphan*/  kmaps; } ;
struct kmod_path {int /*<<< orphan*/  name; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*) ; 
 scalar_t__ FUNC2 (struct kmod_path*,char const*) ; 
 struct dso* FUNC3 (struct machine*,struct kmod_path*,char const*) ; 
 struct map* FUNC4 (int /*<<< orphan*/ ,struct dso*) ; 
 int /*<<< orphan*/  FUNC5 (struct map*) ; 
 struct map* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct map*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct map *FUNC9(struct machine *machine, u64 start,
					const char *filename)
{
	struct map *map = NULL;
	struct dso *dso = NULL;
	struct kmod_path m;

	if (FUNC2(&m, filename))
		return NULL;

	map = FUNC6(&machine->kmaps, m.name);
	if (map) {
		/*
		 * If the map's dso is an offline module, give dso__load()
		 * a chance to find the file path of that module by fixing
		 * long_name.
		 */
		FUNC0(map->dso, filename);
		goto out;
	}

	dso = FUNC3(machine, &m, filename);
	if (dso == NULL)
		goto out;

	map = FUNC4(start, dso);
	if (map == NULL)
		goto out;

	FUNC7(&machine->kmaps, map);

	/* Put the map here because map_groups__insert alread got it */
	FUNC5(map);
out:
	/* put the dso here, corresponding to  machine__findnew_module_dso */
	FUNC1(dso);
	FUNC8(&m.name);
	return map;
}