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
typedef  union perf_event {int dummy; } perf_event ;
struct state {int dummy; } ;
struct mmap {int dummy; } ;
struct machine {int dummy; } ;
struct TYPE_2__ {int nr_mmaps; } ;
struct evlist {struct mmap* mmap; TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmap*) ; 
 union perf_event* FUNC2 (struct mmap*) ; 
 scalar_t__ FUNC3 (struct mmap*) ; 
 int FUNC4 (struct machine*,struct evlist*,union perf_event*,struct state*) ; 

__attribute__((used)) static int FUNC5(struct machine *machine, struct evlist *evlist,
			  struct state *state)
{
	union perf_event *event;
	struct mmap *md;
	int i, ret;

	for (i = 0; i < evlist->core.nr_mmaps; i++) {
		md = &evlist->mmap[i];
		if (FUNC3(md) < 0)
			continue;

		while ((event = FUNC2(md)) != NULL) {
			ret = FUNC4(machine, evlist, event, state);
			FUNC0(md);
			if (ret < 0)
				return ret;
		}
		FUNC1(md);
	}
	return 0;
}