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
union perf_event {int /*<<< orphan*/  thread_map; } ;
struct perf_thread_map {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_thread_map*) ; 
 scalar_t__ FUNC2 (struct perf_thread_map*,int /*<<< orphan*/ *) ; 
 struct perf_thread_map* FUNC3 (int /*<<< orphan*/ *) ; 

size_t FUNC4(union perf_event *event, FILE *fp)
{
	struct perf_thread_map *threads = FUNC3(&event->thread_map);
	size_t ret;

	ret = FUNC0(fp, " nr: ");

	if (threads)
		ret += FUNC2(threads, fp);
	else
		ret += FUNC0(fp, "failed to get threads from event\n");

	FUNC1(threads);
	return ret;
}