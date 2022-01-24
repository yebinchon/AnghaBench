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
struct symbol {int /*<<< orphan*/  name; int /*<<< orphan*/  start; } ;
struct probe_trace_point {int /*<<< orphan*/  retprobe; scalar_t__ offset; scalar_t__ symbol; int /*<<< orphan*/  module; scalar_t__ address; } ;
struct perf_probe_point {scalar_t__ function; scalar_t__ offset; int /*<<< orphan*/  retprobe; } ;
struct map {scalar_t__ (* unmap_ip ) (struct map*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  host_machine ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__*,int,int) ; 
 struct symbol* FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct map**) ; 
 struct symbol* FUNC3 (struct map*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct map*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct map*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct probe_trace_point *tp,
					  struct perf_probe_point *pp,
					  bool is_kprobe)
{
	struct symbol *sym = NULL;
	struct map *map = NULL;
	u64 addr = tp->address;
	int ret = -ENOENT;

	if (!is_kprobe) {
		map = FUNC0(tp->module);
		if (!map)
			goto out;
		sym = FUNC3(map, addr);
	} else {
		if (tp->symbol && !addr) {
			if (FUNC1(tp->symbol,
						&addr, true, false) < 0)
				goto out;
		}
		if (addr) {
			addr += tp->offset;
			sym = FUNC2(host_machine, addr, &map);
		}
	}

	if (!sym)
		goto out;

	pp->retprobe = tp->retprobe;
	pp->offset = addr - map->unmap_ip(map, sym->start);
	pp->function = FUNC5(sym->name);
	ret = pp->function ? 0 : -ENOMEM;

out:
	if (map && !is_kprobe) {
		FUNC4(map);
	}

	return ret;
}