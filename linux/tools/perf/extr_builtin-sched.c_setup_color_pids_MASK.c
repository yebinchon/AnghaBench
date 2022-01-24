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
struct perf_thread_map {int dummy; } ;
struct TYPE_2__ {struct perf_thread_map* color_pids; int /*<<< orphan*/  color_pids_str; } ;
struct perf_sched {TYPE_1__ map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct perf_thread_map* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct perf_sched *sched)
{
	struct perf_thread_map *map;

	if (!sched->map.color_pids_str)
		return 0;

	map = FUNC1(sched->map.color_pids_str);
	if (!map) {
		FUNC0("failed to get thread map from %s\n", sched->map.color_pids_str);
		return -1;
	}

	sched->map.color_pids = map;
	return 0;
}