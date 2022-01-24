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
struct map {int dummy; } ;
struct kmap {int /*<<< orphan*/  kmaps; } ;
struct dso {scalar_t__ kernel; int /*<<< orphan*/  symtab_type; int /*<<< orphan*/  symbols; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_BINARY_TYPE__GUEST_KALLSYMS ; 
 int /*<<< orphan*/  DSO_BINARY_TYPE__KALLSYMS ; 
 scalar_t__ DSO_TYPE_GUEST_KERNEL ; 
 scalar_t__ FUNC0 (struct dso*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*,struct map*,char const*) ; 
 scalar_t__ FUNC2 (struct kmap*,char const*,int /*<<< orphan*/ *) ; 
 struct kmap* FUNC3 (struct map*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct dso*,int /*<<< orphan*/ ,struct map*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct dso*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct dso *dso, const char *filename,
			 struct map *map, bool no_kcore)
{
	struct kmap *kmap = FUNC3(map);
	u64 delta = 0;

	if (FUNC6(filename, "/proc/kallsyms"))
		return -1;

	if (!kmap || !kmap->kmaps)
		return -1;

	if (FUNC0(dso, filename) < 0)
		return -1;

	if (FUNC2(kmap, filename, &delta))
		return -1;

	FUNC8(&dso->symbols);
	FUNC7(&dso->symbols);

	if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
		dso->symtab_type = DSO_BINARY_TYPE__GUEST_KALLSYMS;
	else
		dso->symtab_type = DSO_BINARY_TYPE__KALLSYMS;

	if (!no_kcore && !FUNC1(dso, map, filename))
		return FUNC5(kmap->kmaps, dso);
	else
		return FUNC4(kmap->kmaps, dso, delta, map);
}