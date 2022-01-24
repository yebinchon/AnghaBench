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
typedef  int u32 ;
struct perf_cpu_map {int dummy; } ;
struct cpu_topology {void* thread_siblings; void* die_siblings; void* core_siblings; } ;

/* Variables and functions */
 long UINT_MAX ; 
 int FUNC0 (struct cpu_topology*,int) ; 
 void* FUNC1 (int,int) ; 
 long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_map*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpu_topology*) ; 
 int FUNC5 () ; 
 struct perf_cpu_map* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

struct cpu_topology *FUNC9(void)
{
	struct cpu_topology *tp = NULL;
	void *addr;
	u32 nr, i, nr_addr;
	size_t sz;
	long ncpus;
	int ret = -1;
	struct perf_cpu_map *map;
	bool has_die = FUNC5();

	ncpus = FUNC2();

	/* build online CPU map */
	map = FUNC6(NULL);
	if (map == NULL) {
		FUNC8("failed to get system cpumap\n");
		return NULL;
	}

	nr = (u32)(ncpus & UINT_MAX);

	sz = nr * sizeof(char *);
	if (has_die)
		nr_addr = 3;
	else
		nr_addr = 2;
	addr = FUNC1(1, sizeof(*tp) + nr_addr * sz);
	if (!addr)
		goto out_free;

	tp = addr;
	addr += sizeof(*tp);
	tp->core_siblings = addr;
	addr += sz;
	if (has_die) {
		tp->die_siblings = addr;
		addr += sz;
	}
	tp->thread_siblings = addr;

	for (i = 0; i < nr; i++) {
		if (!FUNC3(map, i))
			continue;

		ret = FUNC0(tp, i);
		if (ret < 0)
			break;
	}

out_free:
	FUNC7(map);
	if (ret) {
		FUNC4(tp);
		tp = NULL;
	}
	return tp;
}