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
struct perf_thread_map {int nr; int /*<<< orphan*/  refcnt; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_thread_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct perf_thread_map* FUNC2 (int) ; 

struct perf_thread_map *FUNC3(pid_t tid)
{
	struct perf_thread_map *threads = FUNC2(1);

	if (threads != NULL) {
		FUNC0(threads, 0, tid);
		threads->nr = 1;
		FUNC1(&threads->refcnt, 1);
	}

	return threads;
}