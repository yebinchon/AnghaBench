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

/* Variables and functions */
 int /*<<< orphan*/  __T_OK ; 
 int /*<<< orphan*/  __T_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libperf_print ; 
 int /*<<< orphan*/  FUNC1 (struct perf_thread_map*) ; 
 struct perf_thread_map* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct perf_thread_map*) ; 

int FUNC4(int argc, char **argv)
{
	struct perf_thread_map *threads;

	__T_START;

	FUNC0(libperf_print);

	threads = FUNC2();
	if (!threads)
		return -1;

	FUNC1(threads);
	FUNC3(threads);
	FUNC3(threads);

	__T_OK;
	return 0;
}