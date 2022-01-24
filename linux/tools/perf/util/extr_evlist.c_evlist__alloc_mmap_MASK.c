#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fd; int overwrite; int /*<<< orphan*/  refcnt; } ;
struct mmap {TYPE_2__ core; } ;
struct TYPE_3__ {int nr_mmaps; int /*<<< orphan*/  threads; int /*<<< orphan*/  cpus; } ;
struct evlist {TYPE_1__ core; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mmap* FUNC4 (int) ; 

__attribute__((used)) static struct mmap *FUNC5(struct evlist *evlist,
				       bool overwrite)
{
	int i;
	struct mmap *map;

	evlist->core.nr_mmaps = FUNC1(evlist->core.cpus);
	if (FUNC0(evlist->core.cpus))
		evlist->core.nr_mmaps = FUNC2(evlist->core.threads);
	map = FUNC4(evlist->core.nr_mmaps * sizeof(struct mmap));
	if (!map)
		return NULL;

	for (i = 0; i < evlist->core.nr_mmaps; i++) {
		map[i].core.fd = -1;
		map[i].core.overwrite = overwrite;
		/*
		 * When the perf_mmap() call is made we grab one refcount, plus
		 * one extra to let perf_mmap__consume() get the last
		 * events after all real references (perf_mmap__get()) are
		 * dropped.
		 *
		 * Each PERF_EVENT_IOC_SET_OUTPUT points to this mmap and
		 * thus does perf_mmap__get() on it.
		 */
		FUNC3(&map[i].core.refcnt, 0);
	}
	return map;
}