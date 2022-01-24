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
typedef  int /*<<< orphan*/  u8 ;
struct perf_thread_map {int dummy; } ;
struct perf_event_attr {unsigned int config; int disabled; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int exclude_kernel; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*) ; 
 struct evsel* FUNC1 (struct perf_event_attr*) ; 
 int FUNC2 (struct evsel*,int /*<<< orphan*/ *,struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_thread_map*) ; 
 struct perf_thread_map* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(u8 type, unsigned config)
{
	bool ret = true;
	int open_return;
	struct evsel *evsel;
	struct perf_event_attr attr = {
		.type = type,
		.config = config,
		.disabled = 1,
	};
	struct perf_thread_map *tmap = FUNC4(0);

	if (tmap == NULL)
		return false;

	evsel = FUNC1(&attr);
	if (evsel) {
		open_return = FUNC2(evsel, NULL, tmap);
		ret = open_return >= 0;

		if (open_return == -EACCES) {
			/*
			 * This happens if the paranoid value
			 * /proc/sys/kernel/perf_event_paranoid is set to 2
			 * Re-run with exclude_kernel set; we don't do that
			 * by default as some ARM machines do not support it.
			 *
			 */
			evsel->core.attr.exclude_kernel = 1;
			ret = FUNC2(evsel, NULL, tmap) >= 0;
		}
		FUNC0(evsel);
	}

	FUNC3(tmap);
	return ret;
}