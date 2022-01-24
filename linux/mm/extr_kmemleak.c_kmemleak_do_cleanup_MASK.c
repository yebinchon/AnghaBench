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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  kmemleak_found_leaks ; 
 scalar_t__ kmemleak_free_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  scan_mutex ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct work_struct *work)
{
	FUNC4();

	FUNC1(&scan_mutex);
	/*
	 * Once it is made sure that kmemleak_scan has stopped, it is safe to no
	 * longer track object freeing. Ordering of the scan thread stopping and
	 * the memory accesses below is guaranteed by the kthread_stop()
	 * function.
	 */
	kmemleak_free_enabled = 0;
	FUNC2(&scan_mutex);

	if (!kmemleak_found_leaks)
		FUNC0();
	else
		FUNC3("Kmemleak disabled without freeing internal data. Reclaim the memory with \"echo clear > /sys/kernel/debug/kmemleak\".\n");
}