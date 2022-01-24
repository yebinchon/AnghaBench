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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_membarrier_thread_cond ; 
 int /*<<< orphan*/  test_membarrier_thread_mutex ; 
 int /*<<< orphan*/  thread_quit ; 
 int thread_ready ; 

void *FUNC4(void *arg)
{
	FUNC2(&test_membarrier_thread_mutex);
	thread_ready = 1;
	FUNC0(&test_membarrier_thread_cond);
	FUNC3(&test_membarrier_thread_mutex);

	FUNC2(&test_membarrier_thread_mutex);
	while (!thread_quit)
		FUNC1(&test_membarrier_thread_cond,
				  &test_membarrier_thread_mutex);
	FUNC3(&test_membarrier_thread_mutex);

	return NULL;
}