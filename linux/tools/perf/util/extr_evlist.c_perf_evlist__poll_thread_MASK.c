#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union perf_event {int dummy; } perf_event ;
struct mmap {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* cb ) (union perf_event*,int /*<<< orphan*/ ) ;} ;
struct evsel {TYPE_3__ side_band; } ;
struct TYPE_5__ {int nr_mmaps; } ;
struct TYPE_4__ {scalar_t__ done; } ;
struct evlist {struct mmap* mmap; TYPE_2__ core; TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_FS ; 
 int /*<<< orphan*/  FUNC0 (struct evlist*,int) ; 
 struct evsel* FUNC1 (struct evlist*,union perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmap*) ; 
 union perf_event* FUNC4 (struct mmap*) ; 
 scalar_t__ FUNC5 (struct mmap*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (union perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC9(void *arg)
{
	struct evlist *evlist = arg;
	bool draining = false;
	int i, done = 0;
	/*
	 * In order to read symbols from other namespaces perf to needs to call
	 * setns(2).  This isn't permitted if the struct_fs has multiple users.
	 * unshare(2) the fs so that we may continue to setns into namespaces
	 * that we're observing when, for instance, reading the build-ids at
	 * the end of a 'perf record' session.
	 */
	FUNC8(CLONE_FS);

	while (!done) {
		bool got_data = false;

		if (evlist->thread.done)
			draining = true;

		if (!draining)
			FUNC0(evlist, 1000);

		for (i = 0; i < evlist->core.nr_mmaps; i++) {
			struct mmap *map = &evlist->mmap[i];
			union perf_event *event;

			if (FUNC5(map))
				continue;
			while ((event = FUNC4(map)) != NULL) {
				struct evsel *evsel = FUNC1(evlist, event);

				if (evsel && evsel->side_band.cb)
					evsel->side_band.cb(event, evsel->side_band.data);
				else
					FUNC6("cannot locate proper evsel for the side band event\n");

				FUNC2(map);
				got_data = true;
			}
			FUNC3(map);
		}

		if (draining && !got_data)
			break;
	}
	return NULL;
}