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
struct perf_thread_map {int dummy; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  perf_event__process ; 
 int FUNC1 (int /*<<< orphan*/ *,struct perf_thread_map*,int /*<<< orphan*/ ,struct machine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_thread_map*) ; 
 struct perf_thread_map* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct machine *machine)
{
	struct perf_thread_map *map;
	int err;

	map = FUNC3(FUNC0());

	err = FUNC1(NULL, map,
						perf_event__process,
						machine, 0);

	FUNC2(map);
	return err;
}