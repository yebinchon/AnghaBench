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
typedef  scalar_t__ u64 ;
struct maps {int dummy; } ;
struct map_groups {struct maps maps; } ;
struct map {int /*<<< orphan*/  pgoff; int /*<<< orphan*/  (* map_ip ) (struct map*,int /*<<< orphan*/ ) ;} ;
struct machine {int trampolines_mapped; struct map_groups kmaps; } ;
struct kmap {int /*<<< orphan*/  name; } ;
struct extra_kernel_map {int /*<<< orphan*/  name; scalar_t__ pgoff; scalar_t__ end; scalar_t__ start; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_TRAMPOLINE_NAME ; 
 int /*<<< orphan*/  KMAP_NAME_LEN ; 
 scalar_t__ X86_64_CPU_ENTRY_AREA_PER_CPU ; 
 int X86_64_CPU_ENTRY_AREA_SIZE ; 
 scalar_t__ X86_64_ENTRY_TRAMPOLINE ; 
 struct kmap* FUNC0 (struct map*) ; 
 scalar_t__ FUNC1 (struct dso*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct machine*,struct dso*,struct extra_kernel_map*) ; 
 int FUNC4 (struct machine*) ; 
 struct map* FUNC5 (struct map*) ; 
 struct map* FUNC6 (struct map_groups*,int /*<<< orphan*/ ) ; 
 struct map* FUNC7 (struct maps*) ; 
 scalar_t__ page_size ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct map*,int /*<<< orphan*/ ) ; 

int FUNC10(struct machine *machine,
					  struct dso *kernel)
{
	struct map_groups *kmaps = &machine->kmaps;
	struct maps *maps = &kmaps->maps;
	int nr_cpus_avail, cpu;
	bool found = false;
	struct map *map;
	u64 pgoff;

	/*
	 * In the vmlinux case, pgoff is a virtual address which must now be
	 * mapped to a vmlinux offset.
	 */
	for (map = FUNC7(maps); map; map = FUNC5(map)) {
		struct kmap *kmap = FUNC0(map);
		struct map *dest_map;

		if (!kmap || !FUNC2(kmap->name))
			continue;

		dest_map = FUNC6(kmaps, map->pgoff);
		if (dest_map != map)
			map->pgoff = dest_map->map_ip(dest_map, map->pgoff);
		found = true;
	}
	if (found || machine->trampolines_mapped)
		return 0;

	pgoff = FUNC1(kernel);
	if (!pgoff)
		return 0;

	nr_cpus_avail = FUNC4(machine);

	/* Add a 1 page map for each CPU's entry trampoline */
	for (cpu = 0; cpu < nr_cpus_avail; cpu++) {
		u64 va = X86_64_CPU_ENTRY_AREA_PER_CPU +
			 cpu * X86_64_CPU_ENTRY_AREA_SIZE +
			 X86_64_ENTRY_TRAMPOLINE;
		struct extra_kernel_map xm = {
			.start = va,
			.end   = va + page_size,
			.pgoff = pgoff,
		};

		FUNC8(xm.name, ENTRY_TRAMPOLINE_NAME, KMAP_NAME_LEN);

		if (FUNC3(machine, kernel, &xm) < 0)
			return -1;
	}

	machine->trampolines_mapped = nr_cpus_avail;

	return 0;
}