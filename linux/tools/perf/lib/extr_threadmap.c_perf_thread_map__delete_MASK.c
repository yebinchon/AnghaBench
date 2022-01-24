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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_thread_map*) ; 
 struct perf_thread_map* FUNC2 (struct perf_thread_map*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct perf_thread_map *threads)
{
	if (threads) {
		int i;

		FUNC0(FUNC3(&threads->refcnt) != 0,
			  "thread map refcnt unbalanced\n");
		for (i = 0; i < threads->nr; i++)
			FUNC1(FUNC2(threads, i));
		FUNC1(threads);
	}
}