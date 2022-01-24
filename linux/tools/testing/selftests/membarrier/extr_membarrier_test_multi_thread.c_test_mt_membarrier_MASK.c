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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  test_membarrier_thread ; 
 int /*<<< orphan*/  test_membarrier_thread_cond ; 
 int /*<<< orphan*/  test_membarrier_thread_mutex ; 
 int thread_quit ; 
 int /*<<< orphan*/  thread_ready ; 

__attribute__((used)) static int FUNC8(void)
{
	int i;
	pthread_t test_thread;

	FUNC2(&test_thread, NULL,
		       test_membarrier_thread, NULL);

	FUNC4(&test_membarrier_thread_mutex);
	while (!thread_ready)
		FUNC1(&test_membarrier_thread_cond,
				  &test_membarrier_thread_mutex);
	FUNC5(&test_membarrier_thread_mutex);

	FUNC6();

	FUNC7();

	FUNC4(&test_membarrier_thread_mutex);
	thread_quit = 1;
	FUNC0(&test_membarrier_thread_cond);
	FUNC5(&test_membarrier_thread_mutex);

	FUNC3(test_thread, NULL);

	return 0;
}